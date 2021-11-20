import 'package:dalang_mobile/feature/authentication/ui/login/controller/login_controller.dart';
import 'package:dalang_mobile/shared_library/components/sm_text_field.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';
import 'package:dalang_mobile/shared_library/utils/color_tone.dart';
import 'package:dalang_mobile/shared_library/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final LoginController _loginController = sl();

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
                    'Selamat Datang \nKembali',
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
                    controller: _loginController.emailController,
                    hintText: 'Email address',
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: SMTextField(
                    controller: _loginController.passwordController,
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Constants.smRoute.menu);
                    },
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
                ),
                const SizedBox(height: 16),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed(Constants.smRoute.forgotPassword);
                    },
                    child: const Text(
                      'Lupa password ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: ColorTone.smBlack,
                          fontSize: 14),
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
                      'Belum memiliki akun ? ',
                      style: TextStyle(
                        color: ColorTone.smBlack,
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(Constants.smRoute.register);
                      },
                      child: const Text(
                        'Daftar Sekarang',
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
