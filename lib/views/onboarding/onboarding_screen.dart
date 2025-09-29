// lib/views/onboarding/onboarding_screen.dart

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/restaurant_provider.dart';
import 'package:resto2/utils/constants.dart';
import 'package:resto2/utils/snackbar.dart';
import 'package:resto2/views/widgets/custom_app_bar.dart';
import '../widgets/loading_indicator.dart';

class OnboardingScreen extends HookConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUserAsync = ref.watch(currentUserProvider);
    final restaurantIdController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final restaurantRequestState = ref.watch(restaurantControllerProvider);

    ref.listen<AsyncValue<void>>(restaurantControllerProvider, (_, state) {
      state.whenOrNull(
        data: (_) {
          if (context.mounted) {
            showSnackBar(context, UIMessages.requestSentSuccessfully);
            restaurantIdController.clear();
          }
        },
        error: (e, __) {
          if (!context.mounted) return;
          if (e is FirebaseFunctionsException &&
              e.details?['reason'] == 'RESTAURANT_NOT_FOUND') {
            showSnackBar(context, UIMessages.restaurantNotFound, isError: true);
          } else {
            showSnackBar(context, UIMessages.unexpectedError, isError: true);
          }
        },
      );
    });

    void handleSendRequest() {
      if (formKey.currentState?.validate() ?? false) {
        ref.read(restaurantControllerProvider.notifier).requestToJoinRestaurant(
              restaurantId: restaurantIdController.text.trim(),
            );
      }
    }

    return Scaffold(
      appBar: CustomAppBar(
        title: const Text(UIStrings.welcome),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () =>
                ref.read(authControllerProvider.notifier).signOut(),
          ),
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: currentUserAsync.when(
            data: (appUser) {
              if (appUser == null) {
                return const LoadingIndicator();
              }

              return Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        UIStrings.welcomeUser.replaceFirst(
                          '{name}',
                          appUser.displayName ?? 'User',
                        ),
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () =>
                            context.push(AppRoutes.manageRestaurant),
                        child: const Text(UIStrings.createNewRestaurant),
                      ),
                      const SizedBox(height: 24),
                      const Text(UIStrings.or, style: TextStyle(fontSize: 16)),
                      const SizedBox(height: 24),
                      const Text(
                        UIStrings.joinExistingRestaurant,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      Form(
                        key: formKey,
                        child: TextFormField(
                          controller: restaurantIdController,
                          decoration: const InputDecoration(
                            labelText: UIStrings.restaurantId,
                            hintText: UIStrings.restaurantIdHint,
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a valid Restaurant ID';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      if (restaurantRequestState.isLoading)
                        const LoadingIndicator()
                      else
                        ElevatedButton(
                          onPressed: handleSendRequest,
                          child: const Text(UIStrings.sendJoinRequest),
                        ),
                    ],
                  ),
                ),
              );
            },
            loading: () => const LoadingIndicator(),
            error: (err, stack) => Center(
              child: Text('Error loading user profile: ${err.toString()}'),
            ),
          ),
        ),
      ),
    );
  }
}
