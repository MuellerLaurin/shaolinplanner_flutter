import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/core/providers/locale_provider.dart';
import 'package:shaolin_planner_new/core/providers/theme_provider.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeProvider);
    final currentLocale = ref.watch(localeProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.settings.title)),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(t.settings.language),
            trailing: DropdownButton<AppLocale>(
              value: currentLocale,
              onChanged: (newLocale) {
                if (newLocale != null) {
                  ref.read(localeProvider.notifier).setLocale(newLocale);
                }
              },
              items: [
                DropdownMenuItem(
                  value: AppLocale.de,
                  child: const Text('🇩🇪 Deutsch'),
                ),
                DropdownMenuItem(
                  value: AppLocale.en,
                  child: const Text('🇺🇸 English'),
                ),
              ],
              underline: const SizedBox(),
            ),
          ),
          const Divider(),
          ListTile(
            leading: _getThemeIcon(currentThemeMode),
            title: Text(t.settings.themeMode),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                SegmentedButton<ThemeMode>(
                  segments: [
                    ButtonSegment(
                      value: ThemeMode.light,
                      label: Text(t.settings.light),
                      icon: const Icon(Icons.light_mode),
                    ),
                    ButtonSegment(
                      value: ThemeMode.system,
                      label: Text(t.settings.system),
                      icon: const Icon(Icons.brightness_auto),
                    ),
                    ButtonSegment(
                      value: ThemeMode.dark,
                      label: Text(t.settings.dark),
                      icon: const Icon(Icons.dark_mode),
                    ),
                  ],
                  selected: {currentThemeMode},
                  onSelectionChanged: (Set<ThemeMode> newSelection) {
                    ref
                        .read(themeProvider.notifier)
                        .setThemeMode(newSelection.first);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Icon _getThemeIcon(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return const Icon(Icons.light_mode);
      case ThemeMode.dark:
        return const Icon(Icons.dark_mode);
      case ThemeMode.system:
        return const Icon(Icons.brightness_auto);
    }
  }
}
