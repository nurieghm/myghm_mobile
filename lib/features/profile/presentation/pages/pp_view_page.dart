import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/design_system/themes/dimension.dart';
import '../bloc/profile_image_bloc.dart';
import '../bloc/profile_image_state.dart';

class ProfilePhotoViewPage extends StatelessWidget {
  const ProfilePhotoViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Profile Photo',
          style: TextStyle(
            color: Colors.white,
            fontSize: Dimension.style24,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
            size: Dimension.radius32,
          ),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: BlocBuilder<ProfileImageBloc, ProfileImageState>(
          builder: (context, state) {
            File? image;
            state.whenOrNull(success: (file) => image = file);

            return InteractiveViewer(
              minScale: 1,
              maxScale: 4,
              child: ClipOval(
                child: Container(
                  width: 300.w,
                  height: 300.h,
                  color: Colors.grey.shade300,
                  child: image != null
                      ? Image.file(image!, fit: BoxFit.cover)
                      : Center(
                          child: Text(
                            'R',
                            style: const TextStyle(
                              fontSize: 96,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
