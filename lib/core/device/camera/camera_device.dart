import 'dart:io';
import 'package:camera/camera.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/exceptions/app_exception.dart';

abstract class CameraDevice {
  Future<void> initialize();
  Future<File> takePicture({CameraLensDirection direction});
  Future<void> dispose();
}

@LazySingleton(as: CameraDevice)
class CameraDeviceImpl implements CameraDevice {
  late List<CameraDescription> _cameras;
  CameraController? _controller;
  CameraLensDirection? _currentLens;

  @override
  Future<void> initialize() async {
    _cameras = await availableCameras();
  }

  @override
  Future<File> takePicture({
    CameraLensDirection direction = CameraLensDirection.front,
  }) async {
    try {
      if (_controller == null || _currentLens != direction) {
        await _controller?.dispose();
        final camera = _cameras.firstWhere((c) => c.lensDirection == direction);
        _controller = CameraController(camera, ResolutionPreset.high);
        _currentLens = direction;
        await _controller!.initialize();
      }

      final XFile file = await _controller!.takePicture();
      return File(file.path);
    } catch (e) {
      throw const DefaultAppException(
        code: 'CAMERA_ERROR',
        message: 'Gagal mengambil foto',
      );
    }
  }

  @override
  Future<void> dispose() async {
    await _controller?.dispose();
    _controller = null;
  }
}
