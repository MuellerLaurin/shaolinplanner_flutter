import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shaolin_planner_new/features/settings/domain/settings.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'settings_repository.g.dart';

class SettingsRepository {
  final SupabaseClient _supabase;

  SettingsRepository(this._supabase);

  Future<Settings> getSettings() async {
    final userId = _supabase.auth.currentUser?.id;
    if (userId == null) return const Settings();

    try {
      final response = await _supabase
          .from('settings')
          .select()
          .eq('user_id', userId)
          .maybeSingle();

      if (response == null) {
        return const Settings();
      }
      return Settings.fromJson(response);
    } catch (e) {
      // Fallback to defaults on error
      return const Settings();
    }
  }

  Future<void> updateSettings(Settings settings) async {
    final userId = _supabase.auth.currentUser?.id;
    if (userId == null) return;

    await _supabase.from('settings').upsert({
      'user_id': userId,
      ...settings.toJson(),
    });
  }
}

@riverpod
SettingsRepository settingsRepository(Ref ref) {
  return SettingsRepository(Supabase.instance.client);
}
