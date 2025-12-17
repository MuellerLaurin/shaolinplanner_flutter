// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ritual.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ritual _$RitualFromJson(Map<String, dynamic> json) => _Ritual(
  id: json['ritual_id'] as String,
  userId: json['user_id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  duration: (json['duration'] as num).toDouble(),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$RitualToJson(_Ritual instance) => <String, dynamic>{
  'ritual_id': instance.id,
  'user_id': instance.userId,
  'title': instance.title,
  'description': instance.description,
  'duration': instance.duration,
  'created_at': instance.createdAt.toIso8601String(),
};
