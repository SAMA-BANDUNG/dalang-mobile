import 'package:dalang_mobile/feature/authentication/di/authentication_feature_dependencies.dart';

class Injection {
  void initialize() {
    _registerDomainDependencies();
    _registerFeatureDependencies();
  }

  void _registerDomainDependencies(){

  }

  void _registerFeatureDependencies(){
    AuthenticationFeatureDependencies();
  }
}