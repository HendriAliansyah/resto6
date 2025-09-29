// lib/views/auth/register_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/views/widgets/shared/app_text_form_field.dart';
import '../../utils/snackbar.dart';
import '../../utils/constants.dart';
import '../widgets/loading_indicator.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final displayNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final authState = ref.watch(authControllerProvider);
    final isLoading = authState.isLoading;
    final isPasswordVisible = useState(false);
    final isConfirmPasswordVisible = useState(false);

    ref.listen<AsyncValue<void>>(authControllerProvider, (_, state) {
      state.when(
        data: (_) {
          if (context.mounted) {
            showSnackBar(context, UIMessages.registrationSuccessful);
          }
        },
        error: (error, stackTrace) {
          if (context.mounted) {
            showSnackBar(context, 'Error: ${error.toString()}', isError: true);
          }
        },
        loading: () {},
      );
    });

    void handleRegister() async {
      FocusScope.of(context).unfocus();
      if (formKey.currentState?.validate() ?? false) {
        ref.read(authControllerProvider.notifier).signUp(
              email: emailController.text.trim(),
              password: passwordController.text.trim(),
              displayName: displayNameController.text.trim(),
            );
      }
    }

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  UIStrings.createAccount,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  UIStrings.startYourJourney,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(153),
                      ),
                ),
                const SizedBox(height: 32),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        controller: displayNameController,
                        labelText: UIStrings.displayNameLabel,
                        prefixIcon: Icons.person_outline,
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return UIMessages.enterNameError;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      AppTextFormField(
                        controller: emailController,
                        labelText: UIStrings.emailLabel,
                        prefixIcon: Icons.email_outlined,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return UIMessages.enterEmailPrompt;
                          }
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return UIMessages.enterValidEmail;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: passwordController,
                        obscureText: !isPasswordVisible.value,
                        decoration: InputDecoration(
                          labelText: UIStrings.passwordLabel,
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isPasswordVisible.value
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                            ),
                            onPressed: () => isPasswordVisible.value =
                                !isPasswordVisible.value,
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return UIMessages.enterPassword;
                          }
                          if (value.length < 6) {
                            return UIMessages.passwordTooShort;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: confirmPasswordController,
                        obscureText: !isConfirmPasswordVisible.value,
                        decoration: InputDecoration(
                          labelText: UIStrings.confirmPasswordLabel,
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isConfirmPasswordVisible.value
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                            ),
                            onPressed: () => isConfirmPasswordVisible.value =
                                !isConfirmPasswordVisible.value,
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return UIMessages.confirmPasswordError;
                          }
                          if (value != passwordController.text) {
                            return UIMessages.passwordMismatch;
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                if (isLoading)
                  const Center(child: LoadingIndicator())
                else
                  ElevatedButton(
                    onPressed: handleRegister,
                    child: const Text(UIStrings.registerButton),
                  ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => context.go(AppRoutes.login),
                  child: const Text(UIStrings.alreadyHaveAccount),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
