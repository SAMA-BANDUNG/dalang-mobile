import 'package:dalang_mobile/feature/authentication/ui/forgot_password/controller/forgot_password_controller.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);
  final ForgotPasswordController _forgotPasswordController = sl();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Forgot Password Page'),
      ),
    );
  }
}
