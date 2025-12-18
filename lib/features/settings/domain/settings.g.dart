// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Settings _$SettingsFromJson(Map<String, dynamic> json) => _Settings(
  playSound: json['playSound'] as bool? ?? true,
  playSoundEndOfRitual: json['playSoundEndOfRitual'] as bool? ?? true,
  playSoundInRitual: json['playSoundInRitual'] as bool? ?? true,
  playSoundInRitualTime: (json['playSoundInRitualTime'] as num?)?.toInt() ?? 1,
  routinePreparationTime:
      (json['routinePreparationTime'] as num?)?.toInt() ?? 5,
  ritualPreparationTime: (json['ritualPreparationTime'] as num?)?.toInt() ?? 2,
  doRitualPreparationTimeFirstRitual:
      json['doRitualPreparationTimeFirstRitual'] as bool? ?? false,
);

Map<String, dynamic> _$SettingsToJson(_Settings instance) => <String, dynamic>{
  'playSound': instance.playSound,
  'playSoundEndOfRitual': instance.playSoundEndOfRitual,
  'playSoundInRitual': instance.playSoundInRitual,
  'playSoundInRitualTime': instance.playSoundInRitualTime,
  'routinePreparationTime': instance.routinePreparationTime,
  'ritualPreparationTime': instance.ritualPreparationTime,
  'doRitualPreparationTimeFirstRitual':
      instance.doRitualPreparationTimeFirstRitual,
};
