import 'package:flutter/material.dart';

import 'core/design_system/themes/textstyles.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Data  sssssssss", style: TextStyles.text2XlSemiBold),
      ),
    );
  }
}
