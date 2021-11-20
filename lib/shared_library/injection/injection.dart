import 'package:dalang_mobile/domain/authentication/di/authentication_domain_dependencies.dart';
import 'package:dalang_mobile/feature/authentication/di/authentication_feature_dependencies.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Injection {
  void initialize() {
    _registerCoreDependencies();
    _registerDomainDependencies();
    _registerFeatureDependencies();
  }

  void _registerDomainDependencies(){
    AuthenticationDomainDependencies();
  }

  void _registerFeatureDependencies(){
    AuthenticationFeatureDependencies();
  }

  Future<void> _registerCoreDependencies() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final http.Client client = http.Client();
    sl.registerLazySingleton(() => sharedPreferences);
    sl.registerLazySingleton(() => client);
  }
}