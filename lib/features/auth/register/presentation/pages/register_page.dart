import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:myghm_mobile/core/design_system/themes/pallet.dart';
import 'package:myghm_mobile/core/design_system/themes/textstyles.dart';

import '../../../../../core/design_system/themes/dimension.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isPasswordHidden = true;
  bool _isRePasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Image.asset(
                  'assets/icon/icon.png',
                  width: 200.w,
                  height: 200.w,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.width24,
                  vertical: Dimension.height32,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.radius32),
                    topRight: Radius.circular(Dimension.radius32),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Register",
                        textAlign: TextAlign.center,
                        style: TextStyles.textXlBold,
                      ),

                      SizedBox(height: Dimension.height32),

                      TextField(
                        decoration: InputDecoration(
                          labelText: "NIP",
                          labelStyle: TextStyles.textSmRegular,
                          floatingLabelStyle: TextStyle(color: Pallet.black),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(color: Pallet.black),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFFF2B705),
                              width: 1.5.w,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimension.height16),
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyles.textSmRegular,
                          floatingLabelStyle: TextStyle(color: Pallet.black),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(color: Pallet.black),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFFF2B705),
                              width: 1.5.w,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: Dimension.height16),
                      TextField(
                        decoration: InputDecoration(
                          labelText: "No Hp",
                          labelStyle: TextStyles.textSmRegular,
                          floatingLabelStyle: TextStyle(color: Pallet.black),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(color: Pallet.black),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFFF2B705),
                              width: 1.5.w,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: Dimension.height16),

                      TextField(
                        obscureText: _isPasswordHidden,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyles.textSmRegular,
                          floatingLabelStyle: TextStyle(color: Pallet.black),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(color: Pallet.black),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFFF2B705),
                              width: 1.5.w,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: Dimension.style24,
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
                          floatingLabelStyle: TextStyle(color: Pallet.black),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(color: Pallet.black),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimension.radius16,
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFFF2B705),
                              width: 1.5.w,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isRePasswordHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: Dimension.style24,
                            ),
                            onPressed: () {
                              setState(() {
                                _isRePasswordHidden = !_isRePasswordHidden;
                              });
                            },
                          ),
                        ),
                      ),

                      SizedBox(height: Dimension.height24),

                      SizedBox(
                        height: Dimension.height48,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go("/login");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF2B705),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                Dimension.radius12,
                              ),
                            ),
                          ),
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: Dimension.style16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimension.height24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
