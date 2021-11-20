import 'package:dalang_mobile/feature/authentication/ui/splash/page/splash_page.dart';
import 'package:dalang_mobile/feature/home/route/home_route.dart';
import 'package:dalang_mobile/shared_library/injection/injection.dart';
import 'package:dalang_mobile/shared_library/set_orientation/set_orientation.dart';
import 'package:dalang_mobile/shared_library/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'feature/authentication/route/authentication_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Injection().initialize();
  SetOrientation().setPortrait();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      getPages: [
        ...authenticationRoute(),
        ...menuRoute(),
      ],
    );
  }
}
