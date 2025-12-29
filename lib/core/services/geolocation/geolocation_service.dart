import 'dart:async';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '../../exceptions/app_exception.dart';
import 'city_detail.dart';

@LazySingleton(as: GeolocationService)
class GeolocationServiceImpl implements GeolocationService {
  @override
  Future<Position> getCurrentPosition() async {
    try {
      // 1. Pastikan lokasi perangkat aktif
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw LocationPermissionException('Lokasi perangkat belum diaktifkan.');
      }

      // 2. Cek permission
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw LocationPermissionException('User menolak akses lokasi.');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw LocationPermissionException(
          'User menolak akses lokasi secara permanen. Silakan buka pengaturan.',
        );
      }

      // 3. Ambil posisi
      LocationSettings locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      );

      return await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );
    } on TimeoutException catch (e) {
      throw DefaultAppException(message: 'TimeoutException: ${e.message}');
    }
  }

  @override
  Future<CityDetail> getCityDetails(Position position) async {
    try {
      final List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isEmpty) {
        throw const DefaultAppException(message: 'No placemarks found');
      }

      final Placemark place = placemarks[0];
      final String subAdministrativeArea =
          place.subAdministrativeArea ?? "Unknown Area";
      final String locality = place.locality ?? "Unknown Location";
      final String country = place.country ?? "Unknown Country";

      if (locality.isEmpty) {
        throw const DefaultAppException(message: 'Locality is empty');
      }

      return CityDetail(
        subAdministrativeArea: subAdministrativeArea,
        locality: locality,
        country: country,
      );
    } on TimeoutException catch (e) {
      throw DefaultAppException(message: 'TimeoutException: ${e.message}');
    } catch (e) {
      throw DefaultAppException(
        message: 'Error retrieving city details: ${e.toString()}',
      );
    }
  }
}

abstract class GeolocationService {
  Future<Position> getCurrentPosition();
  Future<CityDetail> getCityDetails(Position position);
}
