import 'package:dio/dio.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:myghm_mobile/features/splash/data/models/check_device_model.dart';
import '../../../../core/env/env.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/services/http/http_client_service.dart';

abstract class CheckDeviceDatasource {
  Future<CheckDeviceModel> getDevice();
}

@LazySingleton(as: CheckDeviceDatasource)
class CheckDeviceDatasourceImpl implements CheckDeviceDatasource {
  final HttpClientService httpClientService;

  CheckDeviceDatasourceImpl({@Named('base') required this.httpClientService});

  Future<String> _getDeviceId() async {
    final deviceInfo = DeviceInfoPlugin();
    if (defaultTargetPlatform == TargetPlatform.android) {
      final androidInfo = await deviceInfo.androidInfo;
      return androidInfo.id;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      final iosInfo = await deviceInfo.iosInfo;
      return iosInfo.identifierForVendor ?? 'unknown-ios-device';
    } else {
      return 'unknown-device';
    }
  }

  @override
  Future<CheckDeviceModel> getDevice() async {
    try {
      final deviceId = await _getDeviceId();

      final response = await httpClientService.post(
        path: '${Env.baseEndpoint}check-device/',
        data: {'device_id': "77cf24f47bc37867"},
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      return CheckDeviceModel.fromJson(response.data);
    } catch (e) {
      throw ServerException(error: e, message: e.toString());
    }
  }
}
