import 'package:shaolin_planner_new/features/rituals/domain/ritual.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RitualRepository {
  final SupabaseClient _client;

  RitualRepository(this._client);

  Future<List<Ritual>> fetchRituals() async {
    final userId = _client.auth.currentUser?.id;
    if (userId == null) {
      throw Exception('User not logged in');
    }

    final response = await _client
        .from('rituals')
        .select()
        .eq('user_id', userId)
        .order('created_at', ascending: false);

    return (response as List).map((e) => Ritual.fromJson(e)).toList();
  }

  // Placeholders for future CRUD operations
  Future<void> createRitual(Ritual ritual) async {
    await _client.from('rituals').insert(ritual.toJson());
  }

  Future<void> updateRitual(Ritual ritual) async {
    await _client
        .from('rituals')
        .update(ritual.toJson())
        .eq('ritual_id', ritual.id);
  }

  Future<void> deleteRitual(String ritualId) async {
    await _client.from('rituals').delete().eq('ritual_id', ritualId);
  }
}
