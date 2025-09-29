// lib/views/settings/settings_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/providers/theme_provider.dart';
import 'package:resto2/utils/constants.dart';
import 'package:resto2/views/widgets/app_drawer.dart';
import 'package:resto2/views/widgets/custom_app_bar.dart';
import 'package:resto2/views/widgets/loading_indicator.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedThemeMode = ref.watch(themeModeControllerProvider);
    final themeNotifier = ref.read(themeModeControllerProvider.notifier);
    final previewThemeMode = ref.watch(previewThemeModeProvider);
    final isLoading = useState(false);

    useEffect(() {
      final previewNotifier = ref.read(previewThemeModeProvider.notifier);
      // Initialize the preview with the currently saved theme.
      Future.microtask(() {
        previewNotifier.set(savedThemeMode);
      });

      return () {
        // When leaving the page, reset the preview
        Future.microtask(() {
          previewNotifier.set(null);
        });
      };
    }, [savedThemeMode]); // Rerun if the saved theme changes

    void handleSaveChanges() async {
      if (previewThemeMode == null) return;
      isLoading.value = true;
      try {
        await themeNotifier.setThemeMode(previewThemeMode);
        if (context.mounted) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text(UIMessages.themePreferenceSaved),
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds: 2),
              ),
            );
        }
      } finally {
        if (context.mounted) {
          isLoading.value = false;
        }
      }
    }

    return Scaffold(
      appBar: const CustomAppBar(title: Text(UIStrings.settings)),
      drawer: const AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            UIStrings.appearance,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            UIStrings.chooseAppearance,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          SegmentedButton<ThemeMode>(
            segments: const [
              ButtonSegment<ThemeMode>(
                value: ThemeMode.system,
                label: Text(UIStrings.system),
                icon: Icon(Icons.brightness_auto_outlined),
              ),
              ButtonSegment<ThemeMode>(
                value: ThemeMode.light,
                label: Text(UIStrings.light),
                icon: Icon(Icons.light_mode_outlined),
              ),
              ButtonSegment<ThemeMode>(
                value: ThemeMode.dark,
                label: Text(UIStrings.dark),
                icon: Icon(Icons.dark_mode_outlined),
              ),
            ],
            selected: {previewThemeMode ?? savedThemeMode},
            onSelectionChanged: (newSelection) {
              ref
                  .read(previewThemeModeProvider.notifier)
                  .set(newSelection.first);
            },
          ),
          const SizedBox(height: 32),
          if (isLoading.value)
            const Center(child: LoadingIndicator())
          else
            ElevatedButton(
              onPressed: (previewThemeMode == null ||
                      previewThemeMode == savedThemeMode)
                  ? null
                  : handleSaveChanges,
              child: const Text(UIStrings.saveChanges),
            ),
        ],
      ),
    );
  }
}
