// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Routine _$RoutineFromJson(Map<String, dynamic> json) => _Routine(
  id: json['routine_id'] as String,
  userId: json['user_id'] as String,
  name: json['title'] as String,
  description: json['description'] as String?,
  routinesRituals:
      (json['routines_rituals'] as List<dynamic>?)
          ?.map((e) => RoutineRitual.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$RoutineToJson(_Routine instance) => <String, dynamic>{
  'routine_id': instance.id,
  'user_id': instance.userId,
  'title': instance.name,
  'description': instance.description,
  'routines_rituals': instance.routinesRituals,
};
