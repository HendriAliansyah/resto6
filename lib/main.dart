// lib/main.dart

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/models/user_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/notification_provider.dart';
import 'package:resto2/providers/theme_provider.dart';
import 'package:resto2/services/presence_service.dart';
import 'package:resto2/utils/app_theme.dart';
import 'utils/app_router.dart';
import 'firebase_options.dart';
import 'utils/constants.dart';
import 'utils/snackbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final container = ProviderContainer();
  await container.read(localNotificationServiceProvider).init();

  await FirebaseAppCheck.instance.activate(
    webProvider: ReCaptchaV3Provider('recaptcha-v-site-key'),
    androidProvider: AndroidProvider.playIntegrity,
  );

  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );

  runApp(UncontrolledProviderScope(container: container, child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(presenceServiceProvider);
    final router = ref.watch(routerProvider);
    final savedThemeMode = ref.watch(themeModeProvider);
    final previewThemeMode = ref.watch(previewThemeModeProvider);

    ref.listen<AsyncValue<AppUser?>>(currentUserProvider, (
      previous,
      next,
    ) async {
      final user = next.asData?.value;
      if (user != null) {
        ref.read(fcmServiceProvider);

        final localToken = ref.read(localSessionTokenProvider);
        final remoteToken = user.sessionToken;

        if (localToken == null && remoteToken != null) {
          await Future.delayed(const Duration(milliseconds: 500));
          ref.read(localSessionTokenProvider.notifier).state = remoteToken;
        } else if (localToken != null &&
            remoteToken != null &&
            remoteToken != localToken) {
          final currentContext =
              router.routerDelegate.navigatorKey.currentContext;
          if (currentContext != null) {
            showSnackBar(
              currentContext,
              'Signed out because you logged in on another device.',
              isError: true,
            );
          }
          ref.read(authControllerProvider.notifier).signOut();
        }
      }
    });

    ref.listen<AsyncValue<User?>>(authStateChangeProvider, (previous, next) {
      if (next.asData?.value == null) {
        ref.read(localSessionTokenProvider.notifier).state = null;
      }
    });

    return MaterialApp.router(
      title: UIStrings.appTitle,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: previewThemeMode ?? savedThemeMode,
      routerConfig: router,
    );
  }
}
