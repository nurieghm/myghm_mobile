import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/exceptions/app_exception.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loading() = _Loading;
  const factory SplashState.success() = _Success;

  const factory SplashState.noInternet() = _NoInternet;
  const factory SplashState.serverDown() = _ServerDown;
  const factory SplashState.locationPermissionDenied() =
      _LocationPermissionDenied;

  const factory SplashState.deviceNotRegistered() = _DeviceNotRegistered;
  const factory SplashState.deviceTokenExpired() = _DeviceTokenExpired;
  const factory SplashState.deviceValid() = _DeviceValid;

  const factory SplashState.failure(AppException exception) = _Failure;
}
