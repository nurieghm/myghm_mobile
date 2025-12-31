import 'dart:io';
import 'package:injectable/injectable.dart';
import '../../../../core/device/profile_image_storage_device.dart';

@lazySingleton
class LoadProfileImageUsecase {
  final ProfileImageStorage storage;

  LoadProfileImageUsecase(this.storage);

  Future<File?> call() => storage.load();
}
