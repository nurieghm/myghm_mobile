// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_app_version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckAppVersionModel _$CheckAppVersionModelFromJson(
  Map<String, dynamic> json,
) => _CheckAppVersionModel(
  status: json['status'] as String,
  message: json['message'] as String,
  latestVersion: json['latestVersion'] as String?,
);

Map<String, dynamic> _$CheckAppVersionModelToJson(
  _CheckAppVersionModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'latestVersion': instance.latestVersion,
};
