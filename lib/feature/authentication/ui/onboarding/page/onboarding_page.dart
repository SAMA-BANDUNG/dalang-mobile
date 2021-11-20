import 'package:dalang_mobile/feature/authentication/ui/onboarding/page/components/third_step_page.dart';
import 'package:dalang_mobile/feature/authentication/ui/onboarding/page/components/center_next_button.dart';
import 'package:dalang_mobile/feature/authentication/ui/onboarding/page/components/fourth_step_page.dart';
import 'package:dalang_mobile/feature/authentication/ui/onboarding/page/components/second_step_page.dart';
import 'package:dalang_mobile/feature/authentication/ui/onboarding/page/components/first_step_page.dart';
import 'package:dalang_mobile/feature/authentication/ui/onboarding/page/components/top_back_skip_view.dart';
import 'package:dalang_mobile/feature/authentication/ui/onboarding/page/components/fifth_step_page.dart';
import 'package:dalang_mobile/shared_library/utils/color_tone.dart';
import 'package:dalang_mobile/shared_library/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage>
    with TickerProviderStateMixin {

  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 8));
    _animationController?.animateTo(0.0);
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTone.smWhite,
      body: ClipRect(
        child: Stack(
          children: [
            FirstStepPage(
              animationController: _animationController!,
            ),
            SecondStepPage(
              animationController: _animationController!,
            ),
            ThirdStepPage(
              animationController: _animationController!,
            ),
            FourthStepPage(
              animationController: _animationController!,
            ),
            FifthStepPage(
              animationController: _animationController!,
            ),
            TopBackSkipView(
              onBackClick: _onBackClick,
              onSkipClick: _onSkipClick,
              animationController: _animationController!,
            ),
            CenterNextButton(
              animationController: _animationController!,
              onNextClick: _onNextClick,
              onSignIn: _signInClick,
            ),
          ],
        ),
      ),
    );
  }

  void _onSkipClick() {
    _animationController?.animateTo(0.8,
        duration: const Duration(milliseconds: 1200));
  }

  void _onBackClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      _animationController?.animateTo(0.0);
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      _animationController?.animateTo(0.2);
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      _animationController?.animateTo(0.4);
    } else if (_animationController!.value > 0.6 &&
        _animationController!.value <= 0.8) {
      _animationController?.animateTo(0.6);
    } else if (_animationController!.value > 0.8 &&
        _animationController!.value <= 1.0) {
      _animationController?.animateTo(0.8);
    }
  }

  void _onNextClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      _animationController?.animateTo(0.4);
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      _animationController?.animateTo(0.6);
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      _animationController?.animateTo(0.8);
    } else if (_animationController!.value > 0.6 &&
        _animationController!.value <= 0.8) {
      _signUpClick();
    }
  }

  void _signUpClick() {
    Get.offAndToNamed(Constants.smRoute.register);
  }

  void _signInClick() {
    Get.offAndToNamed(Constants.smRoute.login);
  }
}
