import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:myghm_mobile/features/splash/data/datasources/check_device_datasource.dart';
import 'package:myghm_mobile/features/splash/data/models/check_device_model.dart';
import '../../../../core/exceptions/app_exception.dart';

abstract class CheckDeviceRepository {
  Future<Either<AppException, CheckDeviceModel>> getDevice();
}

@LazySingleton(as: CheckDeviceRepository)
class CheckDeviceRepositoryImpl implements CheckDeviceRepository {
  final CheckDeviceDatasource datasource;

  CheckDeviceRepositoryImpl({required this.datasource});

  @override
  Future<Either<AppException, CheckDeviceModel>> getDevice() async {
    try {
      final result = await datasource.getDevice();
      return Right(result);
    } on AppException catch (e) {
      return Left(e);
    }
  }
}
