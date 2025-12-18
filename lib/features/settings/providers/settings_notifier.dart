import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shaolin_planner_new/features/auth/providers/auth_provider.dart';
import 'package:shaolin_planner_new/features/settings/data/settings_repository.dart';
import 'package:shaolin_planner_new/features/settings/domain/settings.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'settings_notifier.g.dart';

@riverpod
class SettingsNotifier extends _$SettingsNotifier {
  @override
  Future<Settings> build() async {
    // Listen to changes in auth state to reload settings when user changes
    ref.listen(currentUserProvider, (previous, next) {
      if (previous != next) ref.invalidateSelf();
    });
    return await ref.read(settingsRepositoryProvider).getSettings();
  }

  Future<void> updateSettings(Settings settings) async {
    // Optimistic update could be done here, but let's stick to safe async for now
    // or standard "loading" state pattern.
    // The reference code used:
    // state = AsyncValue.data(settings); return; (if no user)
    // await repo.update...; state = await AsyncValue.guard...

    try {
      if (Supabase.instance.client.auth.currentUser == null) {
        state = AsyncValue.data(settings);
        return;
      }
      // Optimistic update for UI responsiveness
      state = AsyncValue.data(settings);

      await ref.read(settingsRepositoryProvider).updateSettings(settings);

      // We don't necessarily need to reload from DB if we trust the input,
      // but re-fetching ensures consistency.
      // state = await AsyncValue.guard(() => build()); // Can cause flicker if DB is slow
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
