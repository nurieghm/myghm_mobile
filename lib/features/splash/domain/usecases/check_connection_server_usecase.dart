import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:myghm_mobile/features/splash/data/models/check_connection_server_model.dart';
import 'package:myghm_mobile/features/splash/data/repositories/check_connection_server_repository.dart';

import '../../../../core/exceptions/app_exception.dart';

@lazySingleton
class CheckConnectionServer {
  final CheckConnectionServerRepository repository;
  CheckConnectionServer({required this.repository});
  Future<Either<AppException, CheckConnectionServerModel>> call() async {
    return await repository.getConnectionServer();
  }
}
