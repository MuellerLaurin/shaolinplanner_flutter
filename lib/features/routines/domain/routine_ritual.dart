import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shaolin_planner_new/features/rituals/domain/ritual.dart';

part 'routine_ritual.freezed.dart';
part 'routine_ritual.g.dart';

@freezed
abstract class RoutineRitual with _$RoutineRitual {
  const factory RoutineRitual({
    @JsonKey(name: 'routine_id') required String routineId,
    @JsonKey(name: 'ritual_id') required String ritualId,
    @JsonKey(name: 'order_nr') required int orderNr,
    required int duration,

    /// The nested ritual object from the join query.
    /// In the Supabase query `routines_rituals(*, rituals(*))`,
    /// the nested 'rituals' part will be mapped here.
    /// Since it's a foreign key relation, it typically returns a single object
    /// if the relationship is correctly set up as many-to-one from this table's perspective.
    /// However, strictly speaking, PostgREST might return it as property 'rituals'.
    @JsonKey(name: 'rituals') required Ritual ritual,
  }) = _RoutineRitual;

  factory RoutineRitual.fromJson(Map<String, dynamic> json) =>
      _$RoutineRitualFromJson(json);
}
