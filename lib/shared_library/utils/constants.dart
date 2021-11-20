class Constants {
  static SMApi smAPI = const SMApi();
  static SMRoute smRoute = const SMRoute();
  static SMCached smCached = const SMCached();

  static const String appName = 'Dalang - Daur Ulang';
}

class SMApi {
  const SMApi();
}

class SMRoute {
  const SMRoute();

  String get initial => '/';
  String get onBoarding => '/auth/onBoarding';
  String get login => '/auth/login';
  String get register => '/auth/register';
  String get forgotPassword => '/auth/forgot-password';
}

class SMCached {
  const SMCached();
}
