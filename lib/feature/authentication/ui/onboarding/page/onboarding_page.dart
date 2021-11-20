import 'package:dalang_mobile/feature/authentication/ui/onboarding/controller/onboarding_controller.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);
  final OnBoardingController _onBoardingController = sl();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('OnBoarding Page'),
      ),
    );
  }
}
