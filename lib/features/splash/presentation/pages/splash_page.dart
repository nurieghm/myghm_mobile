import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../bloc/splash_bloc.dart';
import '../bloc/splash_event.dart';
import '../bloc/splash_state.dart';
import '../widgets/splash_dialog.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          GetIt.instance<SplashBloc>()..add(const SplashEvent.started()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () => context.go('/home'),
            noInternet: () => SplashDialog.noInternet(context),
            serverDown: () => SplashDialog.serverDown(context),
            locationPermissionDenied: () =>
                SplashDialog.locationPermission(context),
            deviceNotRegistered: () => context.go('/register'),
            deviceTokenExpired: () => context.go('/login'),
            deviceValid: () => context.go('/home'),
            failure: (exception) {
              if (exception.message.contains('Update aplikasi wajib')) {
                SplashDialog.updateApp(context);
              } else {
                SplashDialog.genericError(context, exception.message);
              }
            },
          );
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/icon/icon.png',
                  width: 240.w,
                  height: 240.w,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                bottom: 32,
                left: 0,
                right: 0,
                child: Text(
                  'PT Grha Humanindo Manajemen',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
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
