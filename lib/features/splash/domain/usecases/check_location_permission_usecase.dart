import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CheckLocationPermissionUseCase {
  Future<bool> call() async {
    final permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      final result = await Geolocator.requestPermission();
      return result == LocationPermission.always ||
          result == LocationPermission.whileInUse;
    }

    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }
}
