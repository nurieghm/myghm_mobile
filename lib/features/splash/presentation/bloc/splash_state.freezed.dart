// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState()';
}


}

/// @nodoc
class $SplashStateCopyWith<$Res>  {
$SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _NoInternet value)?  noInternet,TResult Function( _ServerDown value)?  serverDown,TResult Function( _LocationPermissionDenied value)?  locationPermissionDenied,TResult Function( _DeviceNotRegistered value)?  deviceNotRegistered,TResult Function( _DeviceTokenExpired value)?  deviceTokenExpired,TResult Function( _DeviceValid value)?  deviceValid,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _NoInternet() when noInternet != null:
return noInternet(_that);case _ServerDown() when serverDown != null:
return serverDown(_that);case _LocationPermissionDenied() when locationPermissionDenied != null:
return locationPermissionDenied(_that);case _DeviceNotRegistered() when deviceNotRegistered != null:
return deviceNotRegistered(_that);case _DeviceTokenExpired() when deviceTokenExpired != null:
return deviceTokenExpired(_that);case _DeviceValid() when deviceValid != null:
return deviceValid(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _NoInternet value)  noInternet,required TResult Function( _ServerDown value)  serverDown,required TResult Function( _LocationPermissionDenied value)  locationPermissionDenied,required TResult Function( _DeviceNotRegistered value)  deviceNotRegistered,required TResult Function( _DeviceTokenExpired value)  deviceTokenExpired,required TResult Function( _DeviceValid value)  deviceValid,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _NoInternet():
return noInternet(_that);case _ServerDown():
return serverDown(_that);case _LocationPermissionDenied():
return locationPermissionDenied(_that);case _DeviceNotRegistered():
return deviceNotRegistered(_that);case _DeviceTokenExpired():
return deviceTokenExpired(_that);case _DeviceValid():
return deviceValid(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _NoInternet value)?  noInternet,TResult? Function( _ServerDown value)?  serverDown,TResult? Function( _LocationPermissionDenied value)?  locationPermissionDenied,TResult? Function( _DeviceNotRegistered value)?  deviceNotRegistered,TResult? Function( _DeviceTokenExpired value)?  deviceTokenExpired,TResult? Function( _DeviceValid value)?  deviceValid,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _NoInternet() when noInternet != null:
return noInternet(_that);case _ServerDown() when serverDown != null:
return serverDown(_that);case _LocationPermissionDenied() when locationPermissionDenied != null:
return locationPermissionDenied(_that);case _DeviceNotRegistered() when deviceNotRegistered != null:
return deviceNotRegistered(_that);case _DeviceTokenExpired() when deviceTokenExpired != null:
return deviceTokenExpired(_that);case _DeviceValid() when deviceValid != null:
return deviceValid(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function()?  noInternet,TResult Function()?  serverDown,TResult Function()?  locationPermissionDenied,TResult Function()?  deviceNotRegistered,TResult Function()?  deviceTokenExpired,TResult Function()?  deviceValid,TResult Function( AppException exception)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _NoInternet() when noInternet != null:
return noInternet();case _ServerDown() when serverDown != null:
return serverDown();case _LocationPermissionDenied() when locationPermissionDenied != null:
return locationPermissionDenied();case _DeviceNotRegistered() when deviceNotRegistered != null:
return deviceNotRegistered();case _DeviceTokenExpired() when deviceTokenExpired != null:
return deviceTokenExpired();case _DeviceValid() when deviceValid != null:
return deviceValid();case _Failure() when failure != null:
return failure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function()  noInternet,required TResult Function()  serverDown,required TResult Function()  locationPermissionDenied,required TResult Function()  deviceNotRegistered,required TResult Function()  deviceTokenExpired,required TResult Function()  deviceValid,required TResult Function( AppException exception)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success();case _NoInternet():
return noInternet();case _ServerDown():
return serverDown();case _LocationPermissionDenied():
return locationPermissionDenied();case _DeviceNotRegistered():
return deviceNotRegistered();case _DeviceTokenExpired():
return deviceTokenExpired();case _DeviceValid():
return deviceValid();case _Failure():
return failure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function()?  noInternet,TResult? Function()?  serverDown,TResult? Function()?  locationPermissionDenied,TResult? Function()?  deviceNotRegistered,TResult? Function()?  deviceTokenExpired,TResult? Function()?  deviceValid,TResult? Function( AppException exception)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _NoInternet() when noInternet != null:
return noInternet();case _ServerDown() when serverDown != null:
return serverDown();case _LocationPermissionDenied() when locationPermissionDenied != null:
return locationPermissionDenied();case _DeviceNotRegistered() when deviceNotRegistered != null:
return deviceNotRegistered();case _DeviceTokenExpired() when deviceTokenExpired != null:
return deviceTokenExpired();case _DeviceValid() when deviceValid != null:
return deviceValid();case _Failure() when failure != null:
return failure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SplashState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.initial()';
}


}




/// @nodoc


class _Loading implements SplashState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.loading()';
}


}




/// @nodoc


class _Success implements SplashState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.success()';
}


}




/// @nodoc


class _NoInternet implements SplashState {
  const _NoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.noInternet()';
}


}




/// @nodoc


class _ServerDown implements SplashState {
  const _ServerDown();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerDown);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.serverDown()';
}


}




/// @nodoc


class _LocationPermissionDenied implements SplashState {
  const _LocationPermissionDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationPermissionDenied);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.locationPermissionDenied()';
}


}




/// @nodoc


class _DeviceNotRegistered implements SplashState {
  const _DeviceNotRegistered();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceNotRegistered);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.deviceNotRegistered()';
}


}




/// @nodoc


class _DeviceTokenExpired implements SplashState {
  const _DeviceTokenExpired();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceTokenExpired);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.deviceTokenExpired()';
}


}




/// @nodoc


class _DeviceValid implements SplashState {
  const _DeviceValid();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceValid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.deviceValid()';
}


}




/// @nodoc


class _Failure implements SplashState {
  const _Failure(this.exception);
  

 final  AppException exception;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'SplashState.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 AppException exception
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(_Failure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as AppException,
  ));
}


}

// dart format on
