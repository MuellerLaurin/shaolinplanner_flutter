// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Routine {

// Asking for consistency with Ritual, assuming primary key might be routine_id or id.
// I'll assume 'id' is safe unless schema proves otherwise, but given Ritual used routine_id,
// I will use @JsonKey(name: 'id') or 'routine_id' if that was the convention.
// Let's stick to standard 'id' for now, or match the user request "Database fields".
// User didn't specify column name for ID, but Ritual had 'ritual_id'.
// I'll use generic 'id' for dart field, and if DB is 'routine_id', I'll map it.
// Let's assume 'id' column in DB for now as that's default Supabase.
@JsonKey(name: 'routine_id') String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'title') String get name; String? get description;// The list of join table entries
@JsonKey(name: 'routines_rituals') List<RoutineRitual> get routinesRituals;
/// Create a copy of Routine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutineCopyWith<Routine> get copyWith => _$RoutineCopyWithImpl<Routine>(this as Routine, _$identity);

  /// Serializes this Routine to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Routine&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.routinesRituals, routinesRituals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,const DeepCollectionEquality().hash(routinesRituals));

@override
String toString() {
  return 'Routine(id: $id, userId: $userId, name: $name, description: $description, routinesRituals: $routinesRituals)';
}


}

/// @nodoc
abstract mixin class $RoutineCopyWith<$Res>  {
  factory $RoutineCopyWith(Routine value, $Res Function(Routine) _then) = _$RoutineCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'routine_id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'title') String name, String? description,@JsonKey(name: 'routines_rituals') List<RoutineRitual> routinesRituals
});




}
/// @nodoc
class _$RoutineCopyWithImpl<$Res>
    implements $RoutineCopyWith<$Res> {
  _$RoutineCopyWithImpl(this._self, this._then);

  final Routine _self;
  final $Res Function(Routine) _then;

/// Create a copy of Routine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = freezed,Object? routinesRituals = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,routinesRituals: null == routinesRituals ? _self.routinesRituals : routinesRituals // ignore: cast_nullable_to_non_nullable
as List<RoutineRitual>,
  ));
}

}


/// Adds pattern-matching-related methods to [Routine].
extension RoutinePatterns on Routine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Routine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Routine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Routine value)  $default,){
final _that = this;
switch (_that) {
case _Routine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Routine value)?  $default,){
final _that = this;
switch (_that) {
case _Routine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'routine_id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'title')  String name,  String? description, @JsonKey(name: 'routines_rituals')  List<RoutineRitual> routinesRituals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Routine() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.routinesRituals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'routine_id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'title')  String name,  String? description, @JsonKey(name: 'routines_rituals')  List<RoutineRitual> routinesRituals)  $default,) {final _that = this;
switch (_that) {
case _Routine():
return $default(_that.id,_that.userId,_that.name,_that.description,_that.routinesRituals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'routine_id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'title')  String name,  String? description, @JsonKey(name: 'routines_rituals')  List<RoutineRitual> routinesRituals)?  $default,) {final _that = this;
switch (_that) {
case _Routine() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.description,_that.routinesRituals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Routine implements Routine {
  const _Routine({@JsonKey(name: 'routine_id') required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'title') required this.name, this.description, @JsonKey(name: 'routines_rituals') final  List<RoutineRitual> routinesRituals = const []}): _routinesRituals = routinesRituals;
  factory _Routine.fromJson(Map<String, dynamic> json) => _$RoutineFromJson(json);

// Asking for consistency with Ritual, assuming primary key might be routine_id or id.
// I'll assume 'id' is safe unless schema proves otherwise, but given Ritual used routine_id,
// I will use @JsonKey(name: 'id') or 'routine_id' if that was the convention.
// Let's stick to standard 'id' for now, or match the user request "Database fields".
// User didn't specify column name for ID, but Ritual had 'ritual_id'.
// I'll use generic 'id' for dart field, and if DB is 'routine_id', I'll map it.
// Let's assume 'id' column in DB for now as that's default Supabase.
@override@JsonKey(name: 'routine_id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'title') final  String name;
@override final  String? description;
// The list of join table entries
 final  List<RoutineRitual> _routinesRituals;
// The list of join table entries
@override@JsonKey(name: 'routines_rituals') List<RoutineRitual> get routinesRituals {
  if (_routinesRituals is EqualUnmodifiableListView) return _routinesRituals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routinesRituals);
}


/// Create a copy of Routine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoutineCopyWith<_Routine> get copyWith => __$RoutineCopyWithImpl<_Routine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoutineToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Routine&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._routinesRituals, _routinesRituals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,description,const DeepCollectionEquality().hash(_routinesRituals));

@override
String toString() {
  return 'Routine(id: $id, userId: $userId, name: $name, description: $description, routinesRituals: $routinesRituals)';
}


}

/// @nodoc
abstract mixin class _$RoutineCopyWith<$Res> implements $RoutineCopyWith<$Res> {
  factory _$RoutineCopyWith(_Routine value, $Res Function(_Routine) _then) = __$RoutineCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'routine_id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'title') String name, String? description,@JsonKey(name: 'routines_rituals') List<RoutineRitual> routinesRituals
});




}
/// @nodoc
class __$RoutineCopyWithImpl<$Res>
    implements _$RoutineCopyWith<$Res> {
  __$RoutineCopyWithImpl(this._self, this._then);

  final _Routine _self;
  final $Res Function(_Routine) _then;

/// Create a copy of Routine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? description = freezed,Object? routinesRituals = null,}) {
  return _then(_Routine(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,routinesRituals: null == routinesRituals ? _self._routinesRituals : routinesRituals // ignore: cast_nullable_to_non_nullable
as List<RoutineRitual>,
  ));
}


}

// dart format on
