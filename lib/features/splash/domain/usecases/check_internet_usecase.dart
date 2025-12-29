import 'package:injectable/injectable.dart';
import '../../../../core/services/http/internet_connection_service.dart';
import '../../../../core/exceptions/app_exception.dart';

@lazySingleton
class CheckInternetUseCase {
  final InternetConnectionService _internetConnectionService;

  CheckInternetUseCase(this._internetConnectionService);

  Future<void> call() async {
    try {
      await _internetConnectionService.checkConnectivityState();
    } on InternetConnectionException {
      rethrow;
    } catch (_) {
      throw const DefaultAppException();
    }
  }
}
