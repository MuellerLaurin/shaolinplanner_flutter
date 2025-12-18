// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Settings {

 bool get playSound; bool get playSoundEndOfRitual; bool get playSoundInRitual; int get playSoundInRitualTime; int get routinePreparationTime; int get ritualPreparationTime; bool get doRitualPreparationTimeFirstRitual; String get darkMode; String get language;
/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsCopyWith<Settings> get copyWith => _$SettingsCopyWithImpl<Settings>(this as Settings, _$identity);

  /// Serializes this Settings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Settings&&(identical(other.playSound, playSound) || other.playSound == playSound)&&(identical(other.playSoundEndOfRitual, playSoundEndOfRitual) || other.playSoundEndOfRitual == playSoundEndOfRitual)&&(identical(other.playSoundInRitual, playSoundInRitual) || other.playSoundInRitual == playSoundInRitual)&&(identical(other.playSoundInRitualTime, playSoundInRitualTime) || other.playSoundInRitualTime == playSoundInRitualTime)&&(identical(other.routinePreparationTime, routinePreparationTime) || other.routinePreparationTime == routinePreparationTime)&&(identical(other.ritualPreparationTime, ritualPreparationTime) || other.ritualPreparationTime == ritualPreparationTime)&&(identical(other.doRitualPreparationTimeFirstRitual, doRitualPreparationTimeFirstRitual) || other.doRitualPreparationTimeFirstRitual == doRitualPreparationTimeFirstRitual)&&(identical(other.darkMode, darkMode) || other.darkMode == darkMode)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,playSound,playSoundEndOfRitual,playSoundInRitual,playSoundInRitualTime,routinePreparationTime,ritualPreparationTime,doRitualPreparationTimeFirstRitual,darkMode,language);

@override
String toString() {
  return 'Settings(playSound: $playSound, playSoundEndOfRitual: $playSoundEndOfRitual, playSoundInRitual: $playSoundInRitual, playSoundInRitualTime: $playSoundInRitualTime, routinePreparationTime: $routinePreparationTime, ritualPreparationTime: $ritualPreparationTime, doRitualPreparationTimeFirstRitual: $doRitualPreparationTimeFirstRitual, darkMode: $darkMode, language: $language)';
}


}

/// @nodoc
abstract mixin class $SettingsCopyWith<$Res>  {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) _then) = _$SettingsCopyWithImpl;
@useResult
$Res call({
 bool playSound, bool playSoundEndOfRitual, bool playSoundInRitual, int playSoundInRitualTime, int routinePreparationTime, int ritualPreparationTime, bool doRitualPreparationTimeFirstRitual, String darkMode, String language
});




}
/// @nodoc
class _$SettingsCopyWithImpl<$Res>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._self, this._then);

  final Settings _self;
  final $Res Function(Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playSound = null,Object? playSoundEndOfRitual = null,Object? playSoundInRitual = null,Object? playSoundInRitualTime = null,Object? routinePreparationTime = null,Object? ritualPreparationTime = null,Object? doRitualPreparationTimeFirstRitual = null,Object? darkMode = null,Object? language = null,}) {
  return _then(_self.copyWith(
playSound: null == playSound ? _self.playSound : playSound // ignore: cast_nullable_to_non_nullable
as bool,playSoundEndOfRitual: null == playSoundEndOfRitual ? _self.playSoundEndOfRitual : playSoundEndOfRitual // ignore: cast_nullable_to_non_nullable
as bool,playSoundInRitual: null == playSoundInRitual ? _self.playSoundInRitual : playSoundInRitual // ignore: cast_nullable_to_non_nullable
as bool,playSoundInRitualTime: null == playSoundInRitualTime ? _self.playSoundInRitualTime : playSoundInRitualTime // ignore: cast_nullable_to_non_nullable
as int,routinePreparationTime: null == routinePreparationTime ? _self.routinePreparationTime : routinePreparationTime // ignore: cast_nullable_to_non_nullable
as int,ritualPreparationTime: null == ritualPreparationTime ? _self.ritualPreparationTime : ritualPreparationTime // ignore: cast_nullable_to_non_nullable
as int,doRitualPreparationTimeFirstRitual: null == doRitualPreparationTimeFirstRitual ? _self.doRitualPreparationTimeFirstRitual : doRitualPreparationTimeFirstRitual // ignore: cast_nullable_to_non_nullable
as bool,darkMode: null == darkMode ? _self.darkMode : darkMode // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Settings].
extension SettingsPatterns on Settings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Settings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Settings value)  $default,){
final _that = this;
switch (_that) {
case _Settings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Settings value)?  $default,){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool playSound,  bool playSoundEndOfRitual,  bool playSoundInRitual,  int playSoundInRitualTime,  int routinePreparationTime,  int ritualPreparationTime,  bool doRitualPreparationTimeFirstRitual,  String darkMode,  String language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.playSound,_that.playSoundEndOfRitual,_that.playSoundInRitual,_that.playSoundInRitualTime,_that.routinePreparationTime,_that.ritualPreparationTime,_that.doRitualPreparationTimeFirstRitual,_that.darkMode,_that.language);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool playSound,  bool playSoundEndOfRitual,  bool playSoundInRitual,  int playSoundInRitualTime,  int routinePreparationTime,  int ritualPreparationTime,  bool doRitualPreparationTimeFirstRitual,  String darkMode,  String language)  $default,) {final _that = this;
switch (_that) {
case _Settings():
return $default(_that.playSound,_that.playSoundEndOfRitual,_that.playSoundInRitual,_that.playSoundInRitualTime,_that.routinePreparationTime,_that.ritualPreparationTime,_that.doRitualPreparationTimeFirstRitual,_that.darkMode,_that.language);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool playSound,  bool playSoundEndOfRitual,  bool playSoundInRitual,  int playSoundInRitualTime,  int routinePreparationTime,  int ritualPreparationTime,  bool doRitualPreparationTimeFirstRitual,  String darkMode,  String language)?  $default,) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.playSound,_that.playSoundEndOfRitual,_that.playSoundInRitual,_that.playSoundInRitualTime,_that.routinePreparationTime,_that.ritualPreparationTime,_that.doRitualPreparationTimeFirstRitual,_that.darkMode,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Settings implements Settings {
  const _Settings({this.playSound = true, this.playSoundEndOfRitual = true, this.playSoundInRitual = true, this.playSoundInRitualTime = 1, this.routinePreparationTime = 5, this.ritualPreparationTime = 2, this.doRitualPreparationTimeFirstRitual = false, this.darkMode = 'system', this.language = 'en'});
  factory _Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);

@override@JsonKey() final  bool playSound;
@override@JsonKey() final  bool playSoundEndOfRitual;
@override@JsonKey() final  bool playSoundInRitual;
@override@JsonKey() final  int playSoundInRitualTime;
@override@JsonKey() final  int routinePreparationTime;
@override@JsonKey() final  int ritualPreparationTime;
@override@JsonKey() final  bool doRitualPreparationTimeFirstRitual;
@override@JsonKey() final  String darkMode;
@override@JsonKey() final  String language;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsCopyWith<_Settings> get copyWith => __$SettingsCopyWithImpl<_Settings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Settings&&(identical(other.playSound, playSound) || other.playSound == playSound)&&(identical(other.playSoundEndOfRitual, playSoundEndOfRitual) || other.playSoundEndOfRitual == playSoundEndOfRitual)&&(identical(other.playSoundInRitual, playSoundInRitual) || other.playSoundInRitual == playSoundInRitual)&&(identical(other.playSoundInRitualTime, playSoundInRitualTime) || other.playSoundInRitualTime == playSoundInRitualTime)&&(identical(other.routinePreparationTime, routinePreparationTime) || other.routinePreparationTime == routinePreparationTime)&&(identical(other.ritualPreparationTime, ritualPreparationTime) || other.ritualPreparationTime == ritualPreparationTime)&&(identical(other.doRitualPreparationTimeFirstRitual, doRitualPreparationTimeFirstRitual) || other.doRitualPreparationTimeFirstRitual == doRitualPreparationTimeFirstRitual)&&(identical(other.darkMode, darkMode) || other.darkMode == darkMode)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,playSound,playSoundEndOfRitual,playSoundInRitual,playSoundInRitualTime,routinePreparationTime,ritualPreparationTime,doRitualPreparationTimeFirstRitual,darkMode,language);

@override
String toString() {
  return 'Settings(playSound: $playSound, playSoundEndOfRitual: $playSoundEndOfRitual, playSoundInRitual: $playSoundInRitual, playSoundInRitualTime: $playSoundInRitualTime, routinePreparationTime: $routinePreparationTime, ritualPreparationTime: $ritualPreparationTime, doRitualPreparationTimeFirstRitual: $doRitualPreparationTimeFirstRitual, darkMode: $darkMode, language: $language)';
}


}

/// @nodoc
abstract mixin class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) _then) = __$SettingsCopyWithImpl;
@override @useResult
$Res call({
 bool playSound, bool playSoundEndOfRitual, bool playSoundInRitual, int playSoundInRitualTime, int routinePreparationTime, int ritualPreparationTime, bool doRitualPreparationTimeFirstRitual, String darkMode, String language
});




}
/// @nodoc
class __$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(this._self, this._then);

  final _Settings _self;
  final $Res Function(_Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playSound = null,Object? playSoundEndOfRitual = null,Object? playSoundInRitual = null,Object? playSoundInRitualTime = null,Object? routinePreparationTime = null,Object? ritualPreparationTime = null,Object? doRitualPreparationTimeFirstRitual = null,Object? darkMode = null,Object? language = null,}) {
  return _then(_Settings(
playSound: null == playSound ? _self.playSound : playSound // ignore: cast_nullable_to_non_nullable
as bool,playSoundEndOfRitual: null == playSoundEndOfRitual ? _self.playSoundEndOfRitual : playSoundEndOfRitual // ignore: cast_nullable_to_non_nullable
as bool,playSoundInRitual: null == playSoundInRitual ? _self.playSoundInRitual : playSoundInRitual // ignore: cast_nullable_to_non_nullable
as bool,playSoundInRitualTime: null == playSoundInRitualTime ? _self.playSoundInRitualTime : playSoundInRitualTime // ignore: cast_nullable_to_non_nullable
as int,routinePreparationTime: null == routinePreparationTime ? _self.routinePreparationTime : routinePreparationTime // ignore: cast_nullable_to_non_nullable
as int,ritualPreparationTime: null == ritualPreparationTime ? _self.ritualPreparationTime : ritualPreparationTime // ignore: cast_nullable_to_non_nullable
as int,doRitualPreparationTimeFirstRitual: null == doRitualPreparationTimeFirstRitual ? _self.doRitualPreparationTimeFirstRitual : doRitualPreparationTimeFirstRitual // ignore: cast_nullable_to_non_nullable
as bool,darkMode: null == darkMode ? _self.darkMode : darkMode // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
