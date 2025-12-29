import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_connection_server_model.freezed.dart';
part 'check_connection_server_model.g.dart';

@freezed
abstract class CheckConnectionServerModel with _$CheckConnectionServerModel {
  const factory CheckConnectionServerModel({
    required String status,
    required String message,
  }) = _CheckConnectionServerModel;

  factory CheckConnectionServerModel.fromJson(Map<String, dynamic> json) =>
      _$CheckConnectionServerModelFromJson(json);
}
