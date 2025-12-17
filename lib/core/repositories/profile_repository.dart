import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shaolin_planner_new/core/providers/supabase_provider.dart';
import 'package:shaolin_planner_new/features/auth/domain/app_user.dart';

part 'profile_repository.g.dart';

@Riverpod(keepAlive: true)
ProfileRepository profileRepository(Ref ref) {
  return ProfileRepository(ref.watch(supabaseProvider));
}

class ProfileRepository {
  final SupabaseClient _supabase;

  ProfileRepository(this._supabase);

  Future<AppUser> getProfile(User user) async {
    try {
      final data = await _supabase
          .from('profiles')
          .select()
          .eq('id', user.id)
          .single();

      final profileData = Map<String, dynamic>.from(data);
      if (profileData['email'] == null) {
        profileData['email'] = user.email;
      }
      return AppUser.fromJson(profileData);
    } catch (e) {
      // If profile doesn't exist or error, we might want to handle it.
      // For now, rethrow or return a default/partial user?
      // Assuming profile exists if auth works for this MVP.
      rethrow;
    }
  }
}
