// lib/views/auth/forgot_password_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/views/widgets/shared/app_text_form_field.dart';
import '../../providers/auth_providers.dart';
import '../../utils/snackbar.dart';
import '../../utils/constants.dart';
import '../widgets/loading_indicator.dart';

class ForgotPasswordScreen extends HookConsumerWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final isLoading = ref.watch(authControllerProvider);

    void handleResetPassword() async {
      if (emailController.text.trim().isEmpty) {
        showSnackBar(context, UIMessages.enterEmailError, isError: true);
        return;
      }
      try {
        await ref
            .read(authControllerProvider.notifier)
            .sendPasswordResetEmail(email: emailController.text.trim());
        if (!context.mounted) return;
        showSnackBar(context, UIMessages.passwordResetLinkSent);
        context.pop();
      } catch (e) {
        if (!context.mounted) return;
        showSnackBar(context, UIMessages.failedToSendResetLink, isError: true);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(UIStrings.forgotPasswordTitle),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    UIStrings.receiveResetLink,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    UIStrings.receiveResetLinkMessage,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withAlpha(153),
                    ),
                  ),
                  const SizedBox(height: 32),
                  AppTextFormField(
                    controller: emailController,
                    labelText: UIStrings.emailLabel,
                    prefixIcon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 24),
                  if (isLoading)
                    const LoadingIndicator()
                  else
                    ElevatedButton(
                      onPressed: handleResetPassword,
                      child: const Text(UIStrings.resetButton),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
