// lib/views/inventory/edit_stock_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/models/inventory_item_model.dart';
import 'package:resto2/providers/inventory_provider.dart';
import 'package:resto2/utils/snackbar.dart';
import 'package:resto2/views/purchase/widgets/inventory_item_selector.dart';
import 'package:resto2/views/widgets/app_drawer.dart';
import 'package:resto2/utils/constants.dart';
import 'package:resto2/views/widgets/custom_app_bar.dart';

class EditStockPage extends HookConsumerWidget {
  const EditStockPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final selectedItem = useState<InventoryItem?>(null);
    final newQuantityController = useTextEditingController();
    final reasonController = useTextEditingController();
    final inventoryState = ref.watch(inventoryControllerProvider);
    final isLoading = inventoryState.status == InventoryActionStatus.loading;

    ref.listen<InventoryState>(inventoryControllerProvider, (prev, next) {
      if (next.status == InventoryActionStatus.success) {
        showSnackBar(context, UIMessages.stockUpdateSuccessful);
        selectedItem.value = null;
        newQuantityController.clear();
        reasonController.clear();
        formKey.currentState?.reset();
      }
      if (next.status == InventoryActionStatus.error) {
        showSnackBar(
          context,
          next.errorMessage ?? UIMessages.errorOccurred,
          isError: true,
        );
      }
    });

    void submit() {
      if (formKey.currentState?.validate() ?? false) {
        formKey.currentState!.save();
        final newQuantity = double.tryParse(newQuantityController.text) ?? 0.0;

        ref
            .read(inventoryControllerProvider.notifier)
            .editStock(
              item: selectedItem.value!,
              newQuantity: newQuantity,
              reason: reasonController.text,
            );
      }
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const CustomAppBar(title: Text(UIStrings.manualStockAdjustment)),
        drawer: const AppDrawer(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          UIStrings.adjustItemStock,
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        InventoryItemSelector(
                          onChanged: (item) {
                            selectedItem.value = item;
                            newQuantityController.clear();
                          },
                          validator: (item) =>
                              item == null ? UIMessages.selectItemError : null,
                          onSaved: (item) => selectedItem.value = item,
                        ),
                        const SizedBox(height: 16),
                        if (selectedItem.value != null)
                          ListTile(
                            leading: Icon(
                              Icons.inventory_2_outlined,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            title: const Text(UIStrings.currentQuantity),
                            trailing: Text(
                              selectedItem.value!.quantityInStock
                                  .toStringAsFixed(2),
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: newQuantityController,
                          decoration: const InputDecoration(
                            labelText: UIStrings.newQuantity,
                            prefixIcon: Icon(Icons.edit_note),
                          ),
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'^\d+\.?\d{0,2}'),
                            ),
                          ],
                          validator: (v) {
                            if (v == null || v.isEmpty) {
                              return UIMessages.newQuantityRequired;
                            }
                            if (double.tryParse(v) == null) {
                              return UIMessages.invalidNumber;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: reasonController,
                          decoration: const InputDecoration(
                            labelText: UIStrings.reasonForChange,
                            hintText: UIStrings.reasonHint,
                            prefixIcon: Icon(Icons.comment_outlined),
                          ),
                          maxLines: 3,
                          validator: (v) => v!.trim().isEmpty
                              ? UIMessages.reasonRequired
                              : null,
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: isLoading ? null : submit,
                          child: isLoading
                              ? const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 3,
                                    color: Colors.white,
                                  ),
                                )
                              : const Text(UIStrings.confirmAdjustment),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
