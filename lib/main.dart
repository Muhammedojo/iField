import 'package:flutter/material.dart';
import 'package:ifield/i_field.dart';

import 'config/di/app_initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await AppInitializer.init();
  runApp(IField());
}
