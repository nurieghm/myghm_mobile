import 'package:flutter/material.dart';

import 'core/design_system/themes/textstyles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Profile  sssssssss", style: TextStyles.text2XlSemiBold),
      ),
    );
  }
}
