import 'package:dalang_mobile/feature/authentication/ui/register/controller/register_controller.dart';
import 'package:dalang_mobile/shared_library/components/sm_text_field.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';
import 'package:dalang_mobile/shared_library/utils/color_tone.dart';
import 'package:dalang_mobile/shared_library/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterSecondPage extends StatelessWidget {
  RegisterSecondPage({Key? key}) : super(key: key);
  final RegisterController _registerController = sl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Bergabung\n bersama kami',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        color: ColorTone.smBlack,
                        fontSize: 28),
                  ),
                ),
                const SizedBox(height: 72),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: SMTextField(
                    controller: TextEditingController(),
                    hintText: 'Number phone',
                    suffixIcon: const Icon(
                      Icons.check_rounded,
                      color: ColorTone.smPrimaryGreen,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: SMTextField(
                    controller: TextEditingController(),
                    hintText: 'Email',
                    suffixIcon: const Icon(
                      Icons.check_rounded,
                      color: ColorTone.smPrimaryGreen,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: SMTextField(
                    controller: TextEditingController(),
                    hintText: 'Password',
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: ColorTone.smBlack,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38.0),
                      color: ColorTone.smPrimaryGreen,
                    ),
                    child: const Center(
                      child: Text(
                        "Masuk",
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Sudah memiliki akun ? ',
                      style: TextStyle(
                        color: ColorTone.smBlack,
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Constants.smRoute.login);
                      },
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                          color: ColorTone.smPrimaryGreen,
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
