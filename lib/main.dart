import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ifield/ifield.dart';

import 'config/di/app_initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppInitializer.init();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('fr'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      child: const IField(),
    ),
  );
}
