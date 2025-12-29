import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_app_version_model.freezed.dart';
part 'check_app_version_model.g.dart';

@freezed
abstract class CheckAppVersionModel with _$CheckAppVersionModel {
  const factory CheckAppVersionModel({
    required String status,
    required String message,
    String? latestVersion,
  }) = _CheckAppVersionModel;

  factory CheckAppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$CheckAppVersionModelFromJson(json);
}
