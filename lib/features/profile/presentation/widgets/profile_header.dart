import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:myghm_mobile/core/design_system/themes/dimension.dart';
import 'package:myghm_mobile/core/design_system/themes/pallet.dart';
import 'package:myghm_mobile/core/design_system/themes/textstyles.dart';

import '../bloc/profile_image_bloc.dart';
import '../bloc/profile_image_event.dart';
import '../bloc/profile_image_state.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  File? _imageFile;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileImageBloc, ProfileImageState>(
      listener: (context, state) {
        state.when(
          initial: () {
            _isLoading = false;
          },
          loading: () {
            _isLoading = true;
          },
          success: (file) {
            _isLoading = false;
            _imageFile = file;
          },
          failure: (message) {
            _isLoading = false;
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
        );
        setState(() {});
      },
      child: SizedBox(
        height: 250,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: Dimension.height180,
              decoration: const BoxDecoration(color: Pallet.primary),
            ),
            Container(
              margin: EdgeInsets.only(top: Dimension.height130),
              padding: EdgeInsets.only(
                top: Dimension.height60,
                bottom: Dimension.height16,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(Dimension.radius20),
                ),
              ),
              child: Column(
                children: [
                  Text('Rizki Adnan Futuh', style: TextStyles.textMdSemiBold),
                  Text('00000425.12820', style: TextStyles.textMdSemiBold),
                ],
              ),
            ),
            Positioned(
              top: Dimension.height90,
              left: 0,
              right: 0,
              child: Center(
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () => _showImagePickerOptions(context),
                      child: Container(
                        width: Dimension.width90,
                        height: Dimension.height90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Pallet.primary,
                            width: Dimension.width3,
                          ),
                          image: _imageFile != null
                              ? DecorationImage(
                                  image: FileImage(_imageFile!),
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                        child: _isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : _imageFile == null
                            ? Center(
                                child: Text(
                                  'A',
                                  style: TextStyle(
                                    fontSize: Dimension.style32,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            : null,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: Dimension.radius14,
                        backgroundColor: Pallet.primary,
                        child: Icon(
                          Icons.add_a_photo,
                          size: Dimension.style14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showImagePickerOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      clipBehavior: Clip.antiAlias,
      builder: (_) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Kamera'),
                onTap: () {
                  context.read<ProfileImageBloc>().add(
                    const ProfileImageEvent.pickFromCamera(),
                  );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Galeri'),
                onTap: () {
                  context.read<ProfileImageBloc>().add(
                    const ProfileImageEvent.pickFromGallery(),
                  );
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.visibility),
                title: const Text('Lihat Foto'),
                onTap: () {
                  Navigator.pop(context);
                  if (_imageFile != null) {
                    context.push('/profile_photo_view');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Belum ada foto untuk dilihat'),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
