// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_ritual.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoutineRitual {

@JsonKey(name: 'routine_id') String get routineId;@JsonKey(name: 'ritual_id') String get ritualId;@JsonKey(name: 'order_nr') int get orderNr; int get duration;/// The nested ritual object from the join query.
/// In the Supabase query `routines_rituals(*, rituals(*))`,
/// the nested 'rituals' part will be mapped here.
/// Since it's a foreign key relation, it typically returns a single object
/// if the relationship is correctly set up as many-to-one from this table's perspective.
/// However, strictly speaking, PostgREST might return it as property 'rituals'.
@JsonKey(name: 'rituals') Ritual get ritual;
/// Create a copy of RoutineRitual
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutineRitualCopyWith<RoutineRitual> get copyWith => _$RoutineRitualCopyWithImpl<RoutineRitual>(this as RoutineRitual, _$identity);

  /// Serializes this RoutineRitual to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutineRitual&&(identical(other.routineId, routineId) || other.routineId == routineId)&&(identical(other.ritualId, ritualId) || other.ritualId == ritualId)&&(identical(other.orderNr, orderNr) || other.orderNr == orderNr)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.ritual, ritual) || other.ritual == ritual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,routineId,ritualId,orderNr,duration,ritual);

@override
String toString() {
  return 'RoutineRitual(routineId: $routineId, ritualId: $ritualId, orderNr: $orderNr, duration: $duration, ritual: $ritual)';
}


}

/// @nodoc
abstract mixin class $RoutineRitualCopyWith<$Res>  {
  factory $RoutineRitualCopyWith(RoutineRitual value, $Res Function(RoutineRitual) _then) = _$RoutineRitualCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'routine_id') String routineId,@JsonKey(name: 'ritual_id') String ritualId,@JsonKey(name: 'order_nr') int orderNr, int duration,@JsonKey(name: 'rituals') Ritual ritual
});


$RitualCopyWith<$Res> get ritual;

}
/// @nodoc
class _$RoutineRitualCopyWithImpl<$Res>
    implements $RoutineRitualCopyWith<$Res> {
  _$RoutineRitualCopyWithImpl(this._self, this._then);

  final RoutineRitual _self;
  final $Res Function(RoutineRitual) _then;

/// Create a copy of RoutineRitual
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routineId = null,Object? ritualId = null,Object? orderNr = null,Object? duration = null,Object? ritual = null,}) {
  return _then(_self.copyWith(
routineId: null == routineId ? _self.routineId : routineId // ignore: cast_nullable_to_non_nullable
as String,ritualId: null == ritualId ? _self.ritualId : ritualId // ignore: cast_nullable_to_non_nullable
as String,orderNr: null == orderNr ? _self.orderNr : orderNr // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,ritual: null == ritual ? _self.ritual : ritual // ignore: cast_nullable_to_non_nullable
as Ritual,
  ));
}
/// Create a copy of RoutineRitual
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RitualCopyWith<$Res> get ritual {
  
  return $RitualCopyWith<$Res>(_self.ritual, (value) {
    return _then(_self.copyWith(ritual: value));
  });
}
}


/// Adds pattern-matching-related methods to [RoutineRitual].
extension RoutineRitualPatterns on RoutineRitual {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoutineRitual value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoutineRitual() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoutineRitual value)  $default,){
final _that = this;
switch (_that) {
case _RoutineRitual():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoutineRitual value)?  $default,){
final _that = this;
switch (_that) {
case _RoutineRitual() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'routine_id')  String routineId, @JsonKey(name: 'ritual_id')  String ritualId, @JsonKey(name: 'order_nr')  int orderNr,  int duration, @JsonKey(name: 'rituals')  Ritual ritual)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoutineRitual() when $default != null:
return $default(_that.routineId,_that.ritualId,_that.orderNr,_that.duration,_that.ritual);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'routine_id')  String routineId, @JsonKey(name: 'ritual_id')  String ritualId, @JsonKey(name: 'order_nr')  int orderNr,  int duration, @JsonKey(name: 'rituals')  Ritual ritual)  $default,) {final _that = this;
switch (_that) {
case _RoutineRitual():
return $default(_that.routineId,_that.ritualId,_that.orderNr,_that.duration,_that.ritual);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'routine_id')  String routineId, @JsonKey(name: 'ritual_id')  String ritualId, @JsonKey(name: 'order_nr')  int orderNr,  int duration, @JsonKey(name: 'rituals')  Ritual ritual)?  $default,) {final _that = this;
switch (_that) {
case _RoutineRitual() when $default != null:
return $default(_that.routineId,_that.ritualId,_that.orderNr,_that.duration,_that.ritual);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoutineRitual implements RoutineRitual {
  const _RoutineRitual({@JsonKey(name: 'routine_id') required this.routineId, @JsonKey(name: 'ritual_id') required this.ritualId, @JsonKey(name: 'order_nr') required this.orderNr, required this.duration, @JsonKey(name: 'rituals') required this.ritual});
  factory _RoutineRitual.fromJson(Map<String, dynamic> json) => _$RoutineRitualFromJson(json);

@override@JsonKey(name: 'routine_id') final  String routineId;
@override@JsonKey(name: 'ritual_id') final  String ritualId;
@override@JsonKey(name: 'order_nr') final  int orderNr;
@override final  int duration;
/// The nested ritual object from the join query.
/// In the Supabase query `routines_rituals(*, rituals(*))`,
/// the nested 'rituals' part will be mapped here.
/// Since it's a foreign key relation, it typically returns a single object
/// if the relationship is correctly set up as many-to-one from this table's perspective.
/// However, strictly speaking, PostgREST might return it as property 'rituals'.
@override@JsonKey(name: 'rituals') final  Ritual ritual;

/// Create a copy of RoutineRitual
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoutineRitualCopyWith<_RoutineRitual> get copyWith => __$RoutineRitualCopyWithImpl<_RoutineRitual>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoutineRitualToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoutineRitual&&(identical(other.routineId, routineId) || other.routineId == routineId)&&(identical(other.ritualId, ritualId) || other.ritualId == ritualId)&&(identical(other.orderNr, orderNr) || other.orderNr == orderNr)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.ritual, ritual) || other.ritual == ritual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,routineId,ritualId,orderNr,duration,ritual);

@override
String toString() {
  return 'RoutineRitual(routineId: $routineId, ritualId: $ritualId, orderNr: $orderNr, duration: $duration, ritual: $ritual)';
}


}

/// @nodoc
abstract mixin class _$RoutineRitualCopyWith<$Res> implements $RoutineRitualCopyWith<$Res> {
  factory _$RoutineRitualCopyWith(_RoutineRitual value, $Res Function(_RoutineRitual) _then) = __$RoutineRitualCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'routine_id') String routineId,@JsonKey(name: 'ritual_id') String ritualId,@JsonKey(name: 'order_nr') int orderNr, int duration,@JsonKey(name: 'rituals') Ritual ritual
});


@override $RitualCopyWith<$Res> get ritual;

}
/// @nodoc
class __$RoutineRitualCopyWithImpl<$Res>
    implements _$RoutineRitualCopyWith<$Res> {
  __$RoutineRitualCopyWithImpl(this._self, this._then);

  final _RoutineRitual _self;
  final $Res Function(_RoutineRitual) _then;

/// Create a copy of RoutineRitual
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routineId = null,Object? ritualId = null,Object? orderNr = null,Object? duration = null,Object? ritual = null,}) {
  return _then(_RoutineRitual(
routineId: null == routineId ? _self.routineId : routineId // ignore: cast_nullable_to_non_nullable
as String,ritualId: null == ritualId ? _self.ritualId : ritualId // ignore: cast_nullable_to_non_nullable
as String,orderNr: null == orderNr ? _self.orderNr : orderNr // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,ritual: null == ritual ? _self.ritual : ritual // ignore: cast_nullable_to_non_nullable
as Ritual,
  ));
}

/// Create a copy of RoutineRitual
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RitualCopyWith<$Res> get ritual {
  
  return $RitualCopyWith<$Res>(_self.ritual, (value) {
    return _then(_self.copyWith(ritual: value));
  });
}
}

// dart format on
