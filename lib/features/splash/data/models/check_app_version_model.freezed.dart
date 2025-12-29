// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_app_version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckAppVersionModel {

 String get status; String get message; String? get latestVersion;
/// Create a copy of CheckAppVersionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckAppVersionModelCopyWith<CheckAppVersionModel> get copyWith => _$CheckAppVersionModelCopyWithImpl<CheckAppVersionModel>(this as CheckAppVersionModel, _$identity);

  /// Serializes this CheckAppVersionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckAppVersionModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,latestVersion);

@override
String toString() {
  return 'CheckAppVersionModel(status: $status, message: $message, latestVersion: $latestVersion)';
}


}

/// @nodoc
abstract mixin class $CheckAppVersionModelCopyWith<$Res>  {
  factory $CheckAppVersionModelCopyWith(CheckAppVersionModel value, $Res Function(CheckAppVersionModel) _then) = _$CheckAppVersionModelCopyWithImpl;
@useResult
$Res call({
 String status, String message, String? latestVersion
});




}
/// @nodoc
class _$CheckAppVersionModelCopyWithImpl<$Res>
    implements $CheckAppVersionModelCopyWith<$Res> {
  _$CheckAppVersionModelCopyWithImpl(this._self, this._then);

  final CheckAppVersionModel _self;
  final $Res Function(CheckAppVersionModel) _then;

/// Create a copy of CheckAppVersionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? latestVersion = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,latestVersion: freezed == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckAppVersionModel].
extension CheckAppVersionModelPatterns on CheckAppVersionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckAppVersionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckAppVersionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckAppVersionModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckAppVersionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckAppVersionModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckAppVersionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String message,  String? latestVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckAppVersionModel() when $default != null:
return $default(_that.status,_that.message,_that.latestVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String message,  String? latestVersion)  $default,) {final _that = this;
switch (_that) {
case _CheckAppVersionModel():
return $default(_that.status,_that.message,_that.latestVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String message,  String? latestVersion)?  $default,) {final _that = this;
switch (_that) {
case _CheckAppVersionModel() when $default != null:
return $default(_that.status,_that.message,_that.latestVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckAppVersionModel implements CheckAppVersionModel {
  const _CheckAppVersionModel({required this.status, required this.message, this.latestVersion});
  factory _CheckAppVersionModel.fromJson(Map<String, dynamic> json) => _$CheckAppVersionModelFromJson(json);

@override final  String status;
@override final  String message;
@override final  String? latestVersion;

/// Create a copy of CheckAppVersionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckAppVersionModelCopyWith<_CheckAppVersionModel> get copyWith => __$CheckAppVersionModelCopyWithImpl<_CheckAppVersionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckAppVersionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckAppVersionModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,latestVersion);

@override
String toString() {
  return 'CheckAppVersionModel(status: $status, message: $message, latestVersion: $latestVersion)';
}


}

/// @nodoc
abstract mixin class _$CheckAppVersionModelCopyWith<$Res> implements $CheckAppVersionModelCopyWith<$Res> {
  factory _$CheckAppVersionModelCopyWith(_CheckAppVersionModel value, $Res Function(_CheckAppVersionModel) _then) = __$CheckAppVersionModelCopyWithImpl;
@override @useResult
$Res call({
 String status, String message, String? latestVersion
});




}
/// @nodoc
class __$CheckAppVersionModelCopyWithImpl<$Res>
    implements _$CheckAppVersionModelCopyWith<$Res> {
  __$CheckAppVersionModelCopyWithImpl(this._self, this._then);

  final _CheckAppVersionModel _self;
  final $Res Function(_CheckAppVersionModel) _then;

/// Create a copy of CheckAppVersionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? latestVersion = freezed,}) {
  return _then(_CheckAppVersionModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,latestVersion: freezed == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
