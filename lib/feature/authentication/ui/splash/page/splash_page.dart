import 'package:dalang_mobile/feature/authentication/ui/splash/controller/splash_controller.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';
import 'package:dalang_mobile/shared_library/utils/color_tone.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashController _splashController = sl();

  @override
  void initState() {
    _splashController.toOnBoarding();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorTone.smPrimaryGreen,
      body: Center(
        child: Text(
          'dalang',
          style: TextStyle(
              letterSpacing: -0.095 * 72,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              color: ColorTone.smWhite,
              fontSize: 72),
        ),
      ),
    );
  }
}
