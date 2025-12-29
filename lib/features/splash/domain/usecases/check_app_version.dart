import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../data/models/check_app_version_model.dart';
import '../../data/repositories/check_app_version_repository.dart';
import '../../../../core/exceptions/app_exception.dart';

@lazySingleton
class CheckAppVersion {
  final CheckAppVersionRepository repository;

  CheckAppVersion({required this.repository});

  Future<Either<AppException, CheckAppVersionModel>> call() async {
    final result = await repository.getAppVersion();

    return result.map((serverVersion) {
      if (serverVersion.status == 'update_required') {
        throw DefaultAppException(message: 'Update aplikasi wajib');
      }
      return serverVersion;
    });
  }
}
