import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:myghm_mobile/core/design_system/themes/pallet.dart';

import '../../../../../../core/design_system/themes/dimension.dart';
import '../../../../../../core/design_system/themes/textstyles.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  bool _isPasswordHidden = true;
  bool _isRePasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: Dimension.radius36),
          onPressed: () => context.pop(),
        ),
        title: const Text("Reset Password"),
        backgroundColor: const Color(0xFFFFC107),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimension.width24,
            vertical: Dimension.height32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyles.textSmRegular,
                  floatingLabelStyle: const TextStyle(color: Pallet.primary),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius16),
                    borderSide: BorderSide(color: Pallet.primary, width: 2.w),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius16),
                    borderSide: BorderSide(color: Pallet.primary, width: 2.5.w),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                      size: Dimension.radius24,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordHidden = !_isPasswordHidden;
                      });
                    },
                  ),
                ),
              ),

              SizedBox(height: Dimension.height16),

              TextField(
                obscureText: _isRePasswordHidden,
                decoration: InputDecoration(
                  labelText: "RePassword",
                  labelStyle: TextStyles.textSmRegular,
                  floatingLabelStyle: const TextStyle(color: Pallet.primary),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius16),
                    borderSide: BorderSide(color: Pallet.primary, width: 2.w),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.radius16),
                    borderSide: BorderSide(color: Pallet.primary, width: 2.5.w),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isRePasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                      size: Dimension.radius24,
                    ),
                    onPressed: () {
                      setState(() {
                        _isRePasswordHidden = !_isRePasswordHidden;
                      });
                    },
                  ),
                ),
              ),

              SizedBox(height: 32),

              SizedBox(
                height: Dimension.height48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Pallet.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimension.radius12),
                    ),
                  ),
                  child: Text(
                    "Proses",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
