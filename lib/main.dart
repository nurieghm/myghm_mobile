import 'package:flutter/material.dart';
import 'package:myghm_mobile/app.dart';

import 'core/di/injector.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}
