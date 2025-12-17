// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ritual.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ritual {

@JsonKey(name: 'ritual_id') String get id;@JsonKey(name: 'user_id') String get userId; String get title; String? get description; double get duration;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of Ritual
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RitualCopyWith<Ritual> get copyWith => _$RitualCopyWithImpl<Ritual>(this as Ritual, _$identity);

  /// Serializes this Ritual to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ritual&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,description,duration,createdAt);

@override
String toString() {
  return 'Ritual(id: $id, userId: $userId, title: $title, description: $description, duration: $duration, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RitualCopyWith<$Res>  {
  factory $RitualCopyWith(Ritual value, $Res Function(Ritual) _then) = _$RitualCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ritual_id') String id,@JsonKey(name: 'user_id') String userId, String title, String? description, double duration,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$RitualCopyWithImpl<$Res>
    implements $RitualCopyWith<$Res> {
  _$RitualCopyWithImpl(this._self, this._then);

  final Ritual _self;
  final $Res Function(Ritual) _then;

/// Create a copy of Ritual
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? description = freezed,Object? duration = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Ritual].
extension RitualPatterns on Ritual {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ritual value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ritual() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ritual value)  $default,){
final _that = this;
switch (_that) {
case _Ritual():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ritual value)?  $default,){
final _that = this;
switch (_that) {
case _Ritual() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ritual_id')  String id, @JsonKey(name: 'user_id')  String userId,  String title,  String? description,  double duration, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ritual() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.description,_that.duration,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ritual_id')  String id, @JsonKey(name: 'user_id')  String userId,  String title,  String? description,  double duration, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Ritual():
return $default(_that.id,_that.userId,_that.title,_that.description,_that.duration,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ritual_id')  String id, @JsonKey(name: 'user_id')  String userId,  String title,  String? description,  double duration, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Ritual() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.description,_that.duration,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ritual implements Ritual {
  const _Ritual({@JsonKey(name: 'ritual_id') required this.id, @JsonKey(name: 'user_id') required this.userId, required this.title, this.description, required this.duration, @JsonKey(name: 'created_at') required this.createdAt});
  factory _Ritual.fromJson(Map<String, dynamic> json) => _$RitualFromJson(json);

@override@JsonKey(name: 'ritual_id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override final  String title;
@override final  String? description;
@override final  double duration;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of Ritual
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RitualCopyWith<_Ritual> get copyWith => __$RitualCopyWithImpl<_Ritual>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RitualToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ritual&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,description,duration,createdAt);

@override
String toString() {
  return 'Ritual(id: $id, userId: $userId, title: $title, description: $description, duration: $duration, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RitualCopyWith<$Res> implements $RitualCopyWith<$Res> {
  factory _$RitualCopyWith(_Ritual value, $Res Function(_Ritual) _then) = __$RitualCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ritual_id') String id,@JsonKey(name: 'user_id') String userId, String title, String? description, double duration,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$RitualCopyWithImpl<$Res>
    implements _$RitualCopyWith<$Res> {
  __$RitualCopyWithImpl(this._self, this._then);

  final _Ritual _self;
  final $Res Function(_Ritual) _then;

/// Create a copy of Ritual
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? description = freezed,Object? duration = null,Object? createdAt = null,}) {
  return _then(_Ritual(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
