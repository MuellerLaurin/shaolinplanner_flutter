import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
abstract class Settings with _$Settings {
  const factory Settings({
    @Default(true) bool playSound,
    @Default(true) bool playSoundEndOfRitual,
    @Default(true) bool playSoundInRitual,
    @Default(1) int playSoundInRitualTime,
    @Default(5) int routinePreparationTime,
    @Default(2) int ritualPreparationTime,
    @Default(false) bool doRitualPreparationTimeFirstRitual,
    @Default('system') String darkMode,
    @Default('en') String language,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
