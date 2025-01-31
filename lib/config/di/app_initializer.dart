// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get_it/get_it.dart';
//
// class AppInitializer {
//   static late GetIt instanceLocator;
//   static late bool? firstTime;
//   static late bool? isLoggedIn;
//
//   AppInitializer._();
//
//   void close() {
//     instanceLocator.reset();
//   }
//
//   static Future<void> init() async {
//     // Add your initialization code here
//     instanceLocator = GetIt.instance;
//     Bloc.observer = AppBlocObserver();
//     WidgetsFlutterBinding.ensureInitialized();
//     WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//     await ScreenUtil.ensureScreenSize();
//     initializeDi();
//   }
//
//   static initBlocs() {
//     instanceLocator.registerFactory(() => AuthBloc());
//     instanceLocator.registerFactory(() => HomeBloc());
//     instanceLocator.registerFactory(() => ProfileBloc());
//     instanceLocator.registerFactory(() => PlacementBloc());
//   }
//
//   static initGetIt() async {
//     instanceLocator = GetIt.I;
//     instanceLocator.allowReassignment = true;
//     await create();
//   }
//
//   static void initGlobalVariables() {
//     firstTime = true;
//     isLoggedIn = false;
//   }
//
//   static initHelper() {}
//
//   static initializeDi() {
//     initGlobalVariables();
//     initBlocs();
//     initHelper();
//     initGetIt();
//   }
// }
