import 'package:dalang_mobile/feature/authentication/ui/forgot_password/controller/forgot_password_controller.dart';
import 'package:dalang_mobile/feature/authentication/ui/login/controller/login_controller.dart';
import 'package:dalang_mobile/feature/authentication/ui/onboarding/controller/onboarding_controller.dart';
import 'package:dalang_mobile/feature/authentication/ui/register/controller/register_controller.dart';
import 'package:dalang_mobile/feature/authentication/ui/splash/controller/splash_controller.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';

class AuthenticationFeatureDependencies {
  AuthenticationFeatureDependencies() {
    _registerController();
  }

  void _registerController() {
    sl.registerFactory<SplashController>(
      () => SplashController(),
    );
    sl.registerFactory<OnBoardingController>(
      () => OnBoardingController(),
    );
    sl.registerFactory<LoginController>(
      () => LoginController(),
    );
    sl.registerFactory<RegisterController>(
      () => RegisterController(),
    );
    sl.registerFactory<ForgotPasswordController>(
      () => ForgotPasswordController(),
    );
  }
}
