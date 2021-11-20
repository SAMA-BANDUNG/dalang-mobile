import 'package:dalang_mobile/feature/authentication/ui/splash/controller/splash_controller.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';
import 'package:dalang_mobile/shared_library/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);
  final SplashController _splashController = sl();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(Constants.appName),
      ),
    );
  }
}
