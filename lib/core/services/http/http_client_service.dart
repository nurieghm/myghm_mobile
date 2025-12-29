import 'package:dio/dio.dart';
import 'package:myghm_mobile/core/exceptions/app_exception.dart';
import 'package:myghm_mobile/core/services/http/internet_connection_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:injectable/injectable.dart';

import '../../env/env.dart';
import '../logger/logger_service.dart';

abstract class HttpClientService {
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });

  Future<Response> post({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });

  Future<Response> put({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });

  Future<Response> patch({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });

  Future<Response> delete({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });
}

@Named('base')
@LazySingleton(as: HttpClientService)
class HttpClientServiceImpl implements HttpClientService {
  final Dio dio;
  final InternetConnectionService internetConnectionService;
  final LoggerService loggerService;

  HttpClientServiceImpl({
    @Named('base') required this.dio,
    required this.internetConnectionService,
    required this.loggerService,
  }) {
    if (Env.showDebugInfo) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          requestHeader: true,
          compact: false,
        ),
      );
    }
  }

  @override
  Future<Response> delete({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  }) async => _handleRequest(
    () => dio.delete(
      path,
      data: data,
      queryParameters: queryParameter,
      options: options,
    ),
  );

  @override
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameter,
    Options? options,
  }) async => _handleRequest(
    () => dio.get(path, queryParameters: queryParameter, options: options),
  );

  @override
  Future<Response> patch({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  }) async => _handleRequest(
    () => dio.patch(
      path,
      data: data,
      queryParameters: queryParameter,
      options: options,
    ),
  );

  @override
  Future<Response> post({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  }) async => _handleRequest(
    () => dio.post(
      path,
      data: data,
      queryParameters: queryParameter,
      options: options,
    ),
  );

  @override
  Future<Response> put({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  }) async => _handleRequest(
    () => dio.put(
      path,
      data: data,
      queryParameters: queryParameter,
      options: options,
    ),
  );

  Future<Response> _handleRequest(Future<Response> Function() request) async {
    try {
      await internetConnectionService.checkConnectivityState();
      return await request();
    } on InternetConnectionException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      rethrow;
    } on DioException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      final errorMessage = e.response?.data != null
          ? e.response!.data.toString()
          : 'No data received';
      throw ServerException(
        message: (e.response?.statusCode).toString(),
        code: e.toString(),
        error: errorMessage,
      );
    }
  }
}
