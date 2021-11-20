import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationLocalDataSource {
  late SharedPreferences _sharedPreferences;
  AuthenticationLocalDataSource({required SharedPreferences sharedPreferences}){
    _sharedPreferences = sharedPreferences;
  }
}