import 'package:flutter/material.dart';

import 'core/design_system/themes/textstyles.dart';

class SalarySlipPage extends StatelessWidget {
  const SalarySlipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Slip Gaji  sssssssss", style: TextStyles.text2XlSemiBold),
      ),
    );
  }
}
