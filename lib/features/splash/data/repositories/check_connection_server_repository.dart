import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../datasources/check_connection_server_datasource.dart';
import '../models/check_connection_server_model.dart';

abstract class CheckConnectionServerRepository {
  Future<Either<AppException, CheckConnectionServerModel>>
  getConnectionServer();
}

@LazySingleton(as: CheckConnectionServerRepository)
class CheckConnectionServerRepositoryImpl
    implements CheckConnectionServerRepository {
  final CheckConnectionServerDatasource checkconnectionserverdatasource;

  CheckConnectionServerRepositoryImpl({
    required this.checkconnectionserverdatasource,
  });
  @override
  Future<Either<AppException, CheckConnectionServerModel>>
  getConnectionServer() async {
    try {
      final result = await checkconnectionserverdatasource
          .getConnectionServer();
      return Right(result);
    } on InternetConnectionException catch (e) {
      return Left(
        InternetConnectionException(code: e.code, message: e.message),
      );
    } on ServerException catch (e) {
      return Left(ServerException(code: e.code, message: e.message));
    } on DefaultAppException catch (e) {
      return Left(DefaultAppException(code: e.code, message: e.message));
    }
  }
}
