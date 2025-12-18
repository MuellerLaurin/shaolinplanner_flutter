// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_ritual.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoutineRitual _$RoutineRitualFromJson(Map<String, dynamic> json) =>
    _RoutineRitual(
      routineId: json['routine_id'] as String,
      ritualId: json['ritual_id'] as String,
      orderNr: (json['order_nr'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      ritual: Ritual.fromJson(json['rituals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoutineRitualToJson(_RoutineRitual instance) =>
    <String, dynamic>{
      'routine_id': instance.routineId,
      'ritual_id': instance.ritualId,
      'order_nr': instance.orderNr,
      'duration': instance.duration,
      'rituals': instance.ritual,
    };
