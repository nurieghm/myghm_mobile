// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityDetail {

 String get subAdministrativeArea; String get locality; String get country;
/// Create a copy of CityDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityDetailCopyWith<CityDetail> get copyWith => _$CityDetailCopyWithImpl<CityDetail>(this as CityDetail, _$identity);

  /// Serializes this CityDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityDetail&&(identical(other.subAdministrativeArea, subAdministrativeArea) || other.subAdministrativeArea == subAdministrativeArea)&&(identical(other.locality, locality) || other.locality == locality)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subAdministrativeArea,locality,country);

@override
String toString() {
  return 'CityDetail(subAdministrativeArea: $subAdministrativeArea, locality: $locality, country: $country)';
}


}

/// @nodoc
abstract mixin class $CityDetailCopyWith<$Res>  {
  factory $CityDetailCopyWith(CityDetail value, $Res Function(CityDetail) _then) = _$CityDetailCopyWithImpl;
@useResult
$Res call({
 String subAdministrativeArea, String locality, String country
});




}
/// @nodoc
class _$CityDetailCopyWithImpl<$Res>
    implements $CityDetailCopyWith<$Res> {
  _$CityDetailCopyWithImpl(this._self, this._then);

  final CityDetail _self;
  final $Res Function(CityDetail) _then;

/// Create a copy of CityDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subAdministrativeArea = null,Object? locality = null,Object? country = null,}) {
  return _then(_self.copyWith(
subAdministrativeArea: null == subAdministrativeArea ? _self.subAdministrativeArea : subAdministrativeArea // ignore: cast_nullable_to_non_nullable
as String,locality: null == locality ? _self.locality : locality // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CityDetail].
extension CityDetailPatterns on CityDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityDetail value)  $default,){
final _that = this;
switch (_that) {
case _CityDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityDetail value)?  $default,){
final _that = this;
switch (_that) {
case _CityDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subAdministrativeArea,  String locality,  String country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityDetail() when $default != null:
return $default(_that.subAdministrativeArea,_that.locality,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subAdministrativeArea,  String locality,  String country)  $default,) {final _that = this;
switch (_that) {
case _CityDetail():
return $default(_that.subAdministrativeArea,_that.locality,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subAdministrativeArea,  String locality,  String country)?  $default,) {final _that = this;
switch (_that) {
case _CityDetail() when $default != null:
return $default(_that.subAdministrativeArea,_that.locality,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityDetail implements CityDetail {
  const _CityDetail({required this.subAdministrativeArea, required this.locality, required this.country});
  factory _CityDetail.fromJson(Map<String, dynamic> json) => _$CityDetailFromJson(json);

@override final  String subAdministrativeArea;
@override final  String locality;
@override final  String country;

/// Create a copy of CityDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityDetailCopyWith<_CityDetail> get copyWith => __$CityDetailCopyWithImpl<_CityDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityDetail&&(identical(other.subAdministrativeArea, subAdministrativeArea) || other.subAdministrativeArea == subAdministrativeArea)&&(identical(other.locality, locality) || other.locality == locality)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subAdministrativeArea,locality,country);

@override
String toString() {
  return 'CityDetail(subAdministrativeArea: $subAdministrativeArea, locality: $locality, country: $country)';
}


}

/// @nodoc
abstract mixin class _$CityDetailCopyWith<$Res> implements $CityDetailCopyWith<$Res> {
  factory _$CityDetailCopyWith(_CityDetail value, $Res Function(_CityDetail) _then) = __$CityDetailCopyWithImpl;
@override @useResult
$Res call({
 String subAdministrativeArea, String locality, String country
});




}
/// @nodoc
class __$CityDetailCopyWithImpl<$Res>
    implements _$CityDetailCopyWith<$Res> {
  __$CityDetailCopyWithImpl(this._self, this._then);

  final _CityDetail _self;
  final $Res Function(_CityDetail) _then;

/// Create a copy of CityDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subAdministrativeArea = null,Object? locality = null,Object? country = null,}) {
  return _then(_CityDetail(
subAdministrativeArea: null == subAdministrativeArea ? _self.subAdministrativeArea : subAdministrativeArea // ignore: cast_nullable_to_non_nullable
as String,locality: null == locality ? _self.locality : locality // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
