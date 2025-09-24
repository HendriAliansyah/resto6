// lib/views/order_type/widgets/order_type_dialog.dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/models/order_type_model.dart';
import 'package:resto2/providers/order_type_provider.dart';
import 'package:resto2/utils/snackbar.dart';
import 'package:resto2/utils/constants.dart';
import 'package:resto2/views/widgets/shared/app_text_form_field.dart';
import 'package:resto2/views/widgets/shared/entity_dialog.dart';

class OrderTypeDialog extends HookConsumerWidget {
  final OrderType? orderType;
  const OrderTypeDialog({super.key, this.orderType});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditing = orderType != null;
    final nameController = useTextEditingController(text: orderType?.name);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final accessibility = useState(
      orderType?.accessibility ?? OrderTypeAccessibility.all,
    );
    final isLoading =
        ref.watch(orderTypeControllerProvider).status ==
        OrderTypeActionStatus.loading;

    ref.listen<OrderTypeState>(orderTypeControllerProvider, (prev, next) {
      if (next.status == OrderTypeActionStatus.success) {
        showSnackBar(context, UIMessages.orderTypeSaved);
        if (isEditing) {
          if (context.mounted) Navigator.of(context).pop();
        } else {
          nameController.clear();
          accessibility.value = OrderTypeAccessibility.all;
        }
      }
      if (next.status == OrderTypeActionStatus.error) {
        showSnackBar(
          context,
          next.errorMessage ?? UIMessages.errorOccurred,
          isError: true,
        );
      }
    });

    void submit() {
      if (formKey.currentState?.validate() ?? false) {
        final controller = ref.read(orderTypeControllerProvider.notifier);
        if (isEditing) {
          controller.updateOrderType(
            id: orderType!.id,
            name: nameController.text,
            accessibility: accessibility.value,
          );
        } else {
          controller.addOrderType(
            name: nameController.text,
            accessibility: accessibility.value,
          );
        }
      }
    }

    return EntityDialog(
      title: isEditing ? UIStrings.editOrderType : UIStrings.addOrderType,
      isLoading: isLoading,
      onSave: submit,
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextFormField(
                controller: nameController,
                labelText: UIStrings.orderTypeName,
                hintText: UIStrings.orderTypeNameHint,
                validator: (v) =>
                    v!.trim().isEmpty ? UIMessages.enterNameError : null,
              ),
              const SizedBox(height: 24),
              Text(
                UIStrings.accessibility,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              SegmentedButton<OrderTypeAccessibility>(
                segments: const [
                  ButtonSegment(
                    value: OrderTypeAccessibility.all,
                    label: Text(UIStrings.allUsers),
                  ),
                  ButtonSegment(
                    value: OrderTypeAccessibility.staff,
                    label: Text(UIStrings.staffOnly),
                  ),
                ],
                selected: {accessibility.value},
                onSelectionChanged: (newSelection) {
                  accessibility.value = newSelection.first;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
