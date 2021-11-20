import 'package:dalang_mobile/shared_library/utils/color_tone.dart';
import 'package:flutter/material.dart';

class FirstStepPage extends StatefulWidget {
  final AnimationController animationController;

  const FirstStepPage({Key? key, required this.animationController})
      : super(key: key);

  @override
  _FirstStepPageState createState() => _FirstStepPageState();
}

class _FirstStepPageState extends State<FirstStepPage> {
  @override
  Widget build(BuildContext context) {
    final _introductionanimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0.0, -1.0))
            .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: const Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return SlideTransition(
      position: _introductionanimation,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              'assets/image/main/step_1.png',
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              'dalang',
              style: TextStyle(
                  letterSpacing: -0.095 * 36,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  color: ColorTone.smPrimaryGreen,
                  fontSize: 36),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 64, right: 64),
            child: Text(
              "Kami hadir untuk memulai masa depan lebih baik!",
              style: TextStyle(
                color: ColorTone.smBlack,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom + 16),
            child: InkWell(
              onTap: () {
                widget.animationController.animateTo(0.2);
              },
              child: Container(
                height: 58,
                padding: const EdgeInsets.only(
                  left: 56.0,
                  right: 56.0,
                  top: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38.0),
                  color: ColorTone.smPrimaryGreen,
                ),
                child: const Text(
                  "Mulai",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
