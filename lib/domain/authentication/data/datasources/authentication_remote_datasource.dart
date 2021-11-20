import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class AuthenticationRemoteDataSource {
  late http.Client _client;
  AuthenticationRemoteDataSource({required http.Client client}){
    _client = client;
  }
}