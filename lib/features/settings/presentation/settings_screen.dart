import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/core/providers/locale_provider.dart';
import 'package:shaolin_planner_new/core/providers/theme_provider.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

import 'package:shaolin_planner_new/features/settings/domain/settings.dart';
import 'package:shaolin_planner_new/features/settings/providers/settings_notifier.dart';
import 'package:shaolin_planner_new/features/settings/presentation/widgets/number_picker_dialog.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeProvider);
    final currentLocale = ref.watch(localeProvider);
    final settingsAsync = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.settings.title)),
      body: ListView(
        children: [
          // Language
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
          // Theme
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
          const Divider(),
          // General Settings
          _buildSectionHeader('General Settings', context),
          settingsAsync.when(
            data: (settings) => Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Column(
                children: [
                  SwitchListTile(
                    title: Text(
                      'Play sounds',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    value: settings.playSound,
                    onChanged: (value) => _updateSettings(
                      ref,
                      settings.copyWith(playSound: value),
                    ),
                  ),
                  if (settings.playSound) ...[
                    SwitchListTile(
                      title: Text(
                        'Sound at the end of each ritual',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      value: settings.playSoundEndOfRitual,
                      onChanged: (value) => _updateSettings(
                        ref,
                        settings.copyWith(playSoundEndOfRitual: value),
                      ),
                    ),
                    SwitchListTile(
                      title: Text(
                        'Sound before the ritual ends',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      value: settings.playSoundInRitual,
                      onChanged: (value) => _updateSettings(
                        ref,
                        settings.copyWith(playSoundInRitual: value),
                      ),
                    ),
                  ],
                  // Timers
                  if (settings.playSound && settings.playSoundInRitual)
                    ListTile(
                      title: Text(
                        'Time before the end of a ritual',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      trailing: Text(
                        '${settings.playSoundInRitualTime} minutes',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () async {
                        final newTime = await showDialog<int>(
                          context: context,
                          builder: (context) => NumberPickerDialog(
                            initialValue: settings.playSoundInRitualTime,
                          ),
                        );
                        if (newTime != null)
                          _updateSettings(
                            ref,
                            settings.copyWith(playSoundInRitualTime: newTime),
                          );
                      },
                    ),
                  ListTile(
                    title: Text(
                      'Routine preparation time',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    trailing: Text(
                      '${settings.routinePreparationTime} minutes',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () async {
                      final newTime = await showDialog<int>(
                        context: context,
                        builder: (context) => NumberPickerDialog(
                          initialValue: settings.routinePreparationTime,
                        ),
                      );
                      if (newTime != null)
                        _updateSettings(
                          ref,
                          settings.copyWith(routinePreparationTime: newTime),
                        );
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Ritual preparation time',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    trailing: Text(
                      '${settings.ritualPreparationTime} minutes',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () async {
                      final newTime = await showDialog<int>(
                        context: context,
                        builder: (context) => NumberPickerDialog(
                          initialValue: settings.ritualPreparationTime,
                        ),
                      );
                      if (newTime != null)
                        _updateSettings(
                          ref,
                          settings.copyWith(ritualPreparationTime: newTime),
                        );
                    },
                  ),
                  if (settings.ritualPreparationTime > 0)
                    SwitchListTile(
                      title: Text(
                        'Preparation time for first ritual',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      value: settings.doRitualPreparationTimeFirstRitual,
                      onChanged: (value) => _updateSettings(
                        ref,
                        settings.copyWith(
                          doRitualPreparationTimeFirstRitual: value,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, st) => Center(child: Text('Error: $e')),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
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

  void _updateSettings(WidgetRef ref, Settings updatedSettings) {
    ref.read(settingsProvider.notifier).updateSettings(updatedSettings);
  }
}
