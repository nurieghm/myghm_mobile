import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ProfileImageStorage)
class ProfileImageStorageImpl implements ProfileImageStorage {
  static const _key = 'profile_image_path';

  @override
  Future<File?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final path = prefs.getString(_key);

    if (path == null) return null;

    final file = File(path);
    return await file.exists() ? file : null;
  }

  @override
  Future<void> save(File file) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, file.path);
  }

  @override
  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}

abstract class ProfileImageStorage {
  Future<File?> load();
  Future<void> save(File file);
  Future<void> clear();
}
