import 'package:dalang_mobile/feature/authentication/ui/forgot_password/page/forgot_password_page.dart';
import 'package:dalang_mobile/feature/authentication/ui/login/page/login_page.dart';
import 'package:dalang_mobile/feature/authentication/ui/register/page/register_page.dart';
import 'package:dalang_mobile/feature/authentication/ui/splash/page/splash_page.dart';
import 'package:dalang_mobile/shared_library/utils/constants.dart';
import 'package:get/get.dart';

List<GetPage> authenticationRoute() {
  return [
    GetPage(
      name: Constants.smRoute.initial,
      page: () => SplashPage(),
    ),
    GetPage(
      name: Constants.smRoute.login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Constants.smRoute.forgotPassword,
      page: () => ForgotPasswordPage(),
    ),
  ];
}