import 'dart:io';

import 'package:flutter/material.dart';

class ProfilePhotoViewPage extends StatelessWidget {
  final File imageFile;

  const ProfilePhotoViewPage({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Profile Photo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: InteractiveViewer(
          minScale: 1,
          maxScale: 4,
          child: ClipOval(
            child: Image.file(
              imageFile,
              width: 260,
              height: 260,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
