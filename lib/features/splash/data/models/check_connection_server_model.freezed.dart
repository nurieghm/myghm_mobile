// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_connection_server_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckConnectionServerModel {

 String get status; String get message;
/// Create a copy of CheckConnectionServerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckConnectionServerModelCopyWith<CheckConnectionServerModel> get copyWith => _$CheckConnectionServerModelCopyWithImpl<CheckConnectionServerModel>(this as CheckConnectionServerModel, _$identity);

  /// Serializes this CheckConnectionServerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckConnectionServerModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'CheckConnectionServerModel(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $CheckConnectionServerModelCopyWith<$Res>  {
  factory $CheckConnectionServerModelCopyWith(CheckConnectionServerModel value, $Res Function(CheckConnectionServerModel) _then) = _$CheckConnectionServerModelCopyWithImpl;
@useResult
$Res call({
 String status, String message
});




}
/// @nodoc
class _$CheckConnectionServerModelCopyWithImpl<$Res>
    implements $CheckConnectionServerModelCopyWith<$Res> {
  _$CheckConnectionServerModelCopyWithImpl(this._self, this._then);

  final CheckConnectionServerModel _self;
  final $Res Function(CheckConnectionServerModel) _then;

/// Create a copy of CheckConnectionServerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckConnectionServerModel].
extension CheckConnectionServerModelPatterns on CheckConnectionServerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckConnectionServerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckConnectionServerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckConnectionServerModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckConnectionServerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckConnectionServerModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckConnectionServerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckConnectionServerModel() when $default != null:
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String message)  $default,) {final _that = this;
switch (_that) {
case _CheckConnectionServerModel():
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String message)?  $default,) {final _that = this;
switch (_that) {
case _CheckConnectionServerModel() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckConnectionServerModel implements CheckConnectionServerModel {
  const _CheckConnectionServerModel({required this.status, required this.message});
  factory _CheckConnectionServerModel.fromJson(Map<String, dynamic> json) => _$CheckConnectionServerModelFromJson(json);

@override final  String status;
@override final  String message;

/// Create a copy of CheckConnectionServerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckConnectionServerModelCopyWith<_CheckConnectionServerModel> get copyWith => __$CheckConnectionServerModelCopyWithImpl<_CheckConnectionServerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckConnectionServerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckConnectionServerModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'CheckConnectionServerModel(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CheckConnectionServerModelCopyWith<$Res> implements $CheckConnectionServerModelCopyWith<$Res> {
  factory _$CheckConnectionServerModelCopyWith(_CheckConnectionServerModel value, $Res Function(_CheckConnectionServerModel) _then) = __$CheckConnectionServerModelCopyWithImpl;
@override @useResult
$Res call({
 String status, String message
});




}
/// @nodoc
class __$CheckConnectionServerModelCopyWithImpl<$Res>
    implements _$CheckConnectionServerModelCopyWith<$Res> {
  __$CheckConnectionServerModelCopyWithImpl(this._self, this._then);

  final _CheckConnectionServerModel _self;
  final $Res Function(_CheckConnectionServerModel) _then;

/// Create a copy of CheckConnectionServerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,}) {
  return _then(_CheckConnectionServerModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
