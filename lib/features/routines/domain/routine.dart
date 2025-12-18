import 'package:freezed_annotation/freezed_annotation.dart';
import 'routine_ritual.dart';

part 'routine.freezed.dart';
part 'routine.g.dart';

@freezed
abstract class Routine with _$Routine {
  const factory Routine({
    // Asking for consistency with Ritual, assuming primary key might be routine_id or id.
    // I'll assume 'id' is safe unless schema proves otherwise, but given Ritual used routine_id,
    // I will use @JsonKey(name: 'id') or 'routine_id' if that was the convention.
    // Let's stick to standard 'id' for now, or match the user request "Database fields".
    // User didn't specify column name for ID, but Ritual had 'ritual_id'.
    // I'll use generic 'id' for dart field, and if DB is 'routine_id', I'll map it.
    // Let's assume 'id' column in DB for now as that's default Supabase.
    @JsonKey(name: 'routine_id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'title') required String name,
    String? description,
    // The list of join table entries
    @JsonKey(name: 'routines_rituals')
    @Default([])
    List<RoutineRitual> routinesRituals,
  }) = _Routine;

  factory Routine.fromJson(Map<String, dynamic> json) =>
      _$RoutineFromJson(json);
}
