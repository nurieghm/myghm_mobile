import 'package:injectable/injectable.dart';

import '../../../../core/env/env.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/services/http/http_client_service.dart';
import '../models/check_connection_server_model.dart';

abstract class CheckConnectionServerDatasource {
  Future<CheckConnectionServerModel> getConnectionServer();
}

@LazySingleton(as: CheckConnectionServerDatasource)
class CheckConnectionServerDatasourceImpl
    implements CheckConnectionServerDatasource {
  final HttpClientService httpClientService;

  CheckConnectionServerDatasourceImpl({
    @Named('base') required this.httpClientService,
  });

  @override
  Future<CheckConnectionServerModel> getConnectionServer() async {
    try {
      final response = await httpClientService.get(
        path: '${Env.baseEndpoint}index/',
      );
      return CheckConnectionServerModel.fromJson(response.data);
    } catch (e) {
      throw ServerException(error: e, message: e.toString());
    }
  }
}
