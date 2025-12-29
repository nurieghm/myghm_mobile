import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:myghm_mobile/features/splash/data/models/check_device_model.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../data/repositories/check_device_repository.dart';

@lazySingleton
class CheckDeviceUsecase {
  final CheckDeviceRepository repository;
  CheckDeviceUsecase({required this.repository});
  Future<Either<AppException, CheckDeviceModel>> call() async {
    return await repository.getDevice();
  }
}
