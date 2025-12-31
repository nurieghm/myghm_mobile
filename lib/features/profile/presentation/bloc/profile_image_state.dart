import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_state.freezed.dart';

@freezed
class ProfileImageState with _$ProfileImageState {
  const factory ProfileImageState.initial() = _Initial;
  const factory ProfileImageState.loading() = _Loading;
  const factory ProfileImageState.success(File file) = _Success;
  const factory ProfileImageState.failure(String message) = _Failure;
}
