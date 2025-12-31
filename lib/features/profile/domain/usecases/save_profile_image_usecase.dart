import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../core/device/profile_image_storage_device.dart';

@lazySingleton
class SaveProfileImageUsecase {
  final ProfileImageStorage storage;

  SaveProfileImageUsecase(this.storage);

  Future<void> call(File file) => storage.save(file);
}
