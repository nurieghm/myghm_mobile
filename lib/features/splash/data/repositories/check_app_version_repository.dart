import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../data/datasources/check_app_version_datasource.dart';
import '../../data/models/check_app_version_model.dart';
import '../../../../core/exceptions/app_exception.dart';

abstract class CheckAppVersionRepository {
  Future<Either<AppException, CheckAppVersionModel>> getAppVersion();
}

@LazySingleton(as: CheckAppVersionRepository)
class CheckAppVersionRepositoryImpl implements CheckAppVersionRepository {
  final CheckAppVersionDatasource datasource;

  CheckAppVersionRepositoryImpl({required this.datasource});

  @override
  Future<Either<AppException, CheckAppVersionModel>> getAppVersion() async {
    try {
      final result = await datasource.getAppVersion();
      return Right(result);
    } on AppException catch (e) {
      return Left(e);
    }
  }
}
