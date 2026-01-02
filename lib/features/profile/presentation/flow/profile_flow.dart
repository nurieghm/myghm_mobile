import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/profile_image_bloc.dart';
import '../bloc/profile_image_event.dart';

class ProfileFlow extends StatelessWidget {
  final Widget child;

  const ProfileFlow({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          GetIt.I<ProfileImageBloc>()
            ..add(const ProfileImageEvent.loadSavedImage()),
      child: child,
    );
  }
}
