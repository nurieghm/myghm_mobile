import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'profile_image_event.dart';
import 'profile_image_state.dart';
import '../../domain/usecases/load_profile_image_usecase.dart';
import '../../domain/usecases/pick_profile_image_usecase.dart';
import '../../domain/usecases/save_profile_image_usecase.dart';

@injectable
class ProfileImageBloc extends Bloc<ProfileImageEvent, ProfileImageState> {
  final LoadProfileImageUsecase loadProfileImage;
  final PickProfileImageUsecase pickProfileImage;
  final SaveProfileImageUsecase saveProfileImage;

  File? _currentImage;

  ProfileImageBloc(
    this.loadProfileImage,
    this.pickProfileImage,
    this.saveProfileImage,
  ) : super(const ProfileImageState.initial()) {
    on<ProfileImageEvent>((event, emit) async {
      await event.when(
        loadSavedImage: () => _onLoadSaved(emit),
        pickFromCamera: () => _onPickCamera(emit),
        pickFromGallery: () => _onPickGallery(emit),
      );
    });
  }

  /// ================= LOAD =================
  Future<void> _onLoadSaved(Emitter<ProfileImageState> emit) async {
    final file = await loadProfileImage();
    if (file != null) {
      _currentImage = file;
      emit(ProfileImageState.success(file));
    }
  }

  /// ================= PICK CAMERA =================
  Future<void> _onPickCamera(Emitter<ProfileImageState> emit) async {
    await _pick(() => pickProfileImage.fromCamera(), emit);
  }

  /// ================= PICK GALLERY =================
  Future<void> _onPickGallery(Emitter<ProfileImageState> emit) async {
    await _pick(() => pickProfileImage.fromGallery(), emit);
  }

  /// ================= COMMON PICK =================
  Future<void> _pick(
    Future<File?> Function() picker,
    Emitter<ProfileImageState> emit,
  ) async {
    emit(const ProfileImageState.loading());

    final file = await picker();

    /// ❗ USER CANCEL
    if (file == null) {
      if (_currentImage != null) {
        emit(ProfileImageState.success(_currentImage!));
      } else {
        emit(const ProfileImageState.initial());
      }
      return;
    }

    await saveProfileImage(file);

    _currentImage = file;
    emit(ProfileImageState.success(file));
  }
}
