import 'package:dalang_mobile/feature/authentication/ui/register/controller/register_controller.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final RegisterController _registerController = sl();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Register Page'),
      ),
    );
  }
}
