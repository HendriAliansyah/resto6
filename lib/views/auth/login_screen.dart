// lib/views/auth/login_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/views/widgets/shared/app_text_form_field.dart';
import '../../providers/auth_providers.dart';
import '../../utils/snackbar.dart';
import '../../utils/constants.dart';
import '../widgets/loading_indicator.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isLoading = ref.watch(authControllerProvider);
    final isPasswordVisible = useState(false);

    void handleLogin() async {
      FocusScope.of(context).unfocus();
      if (formKey.currentState?.validate() ?? false) {
        try {
          await ref
              .read(authControllerProvider.notifier)
              .signIn(
                email: emailController.text.trim(),
                password: passwordController.text.trim(),
              );
        } catch (e) {
          if (!context.mounted) return;
          showSnackBar(context, UIMessages.loginFailed, isError: true);
        }
      }
    }

    return Scaffold(
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
                  const SizedBox(height: 40),
                  Image.asset('assets/images/logo.png', height: 80),
                  const SizedBox(height: 16),
                  Text(
                    UIStrings.welcomeBack,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    UIStrings.signInToDashboard,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withAlpha(153),
                    ),
                  ),
                  const SizedBox(height: 48),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
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
                              onPressed: () {
                                isPasswordVisible.value =
                                    !isPasswordVisible.value;
                              },
                            ),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return UIMessages.enterPassword;
                            }
                            if (value.length < 6) {
                              return UIMessages.passwordTooShort;
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  if (isLoading)
                    const LoadingIndicator()
                  else
                    ElevatedButton(
                      onPressed: handleLogin,
                      child: const Text(UIStrings.loginButton),
                    ),
                  const SizedBox(height: 24),
                  TextButton(
                    onPressed: () => context.push(AppRoutes.register),
                    child: const Text(UIStrings.dontHaveAccount),
                  ),
                  TextButton(
                    onPressed: () => context.push(AppRoutes.forgotPassword),
                    child: const Text(UIStrings.forgotPasswordPrompt),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
