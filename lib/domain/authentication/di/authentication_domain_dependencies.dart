import 'package:dalang_mobile/domain/authentication/domain/usecases/get_refresh_token_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/get_token_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/user_forgot_password_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/user_login_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/user_register_usecase.dart';
import 'package:dalang_mobile/shared_library/service_locator/service_locator.dart';

import '../data/datasources/authentication_local_datasource.dart';
import '../data/datasources/authentication_remote_datasource.dart';
import '../data/repositories/authentication_repository_impl.dart';
import '../domain/repositories/authentication_repository.dart';

class AuthenticationDomainDependencies {
  AuthenticationDomainDependencies() {
    _registerDataSources();
    _registerRepositories();
    _registerUseCases();
  }

  static void _registerDataSources() {
    sl.registerLazySingleton<AuthenticationRemoteDataSource>(
      () => AuthenticationRemoteDataSource(
        client: sl(),
      ),
    );

    sl.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSource(
        sharedPreferences: sl(),
      ),
    );
  }

  static void _registerRepositories() {
    sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
        authenticationRemoteDataSource: sl(),
        authenticationLocalDataSource: sl(),
      ),
    );
  }

  static void _registerUseCases() {
    sl.registerLazySingleton<GetRefreshTokenUseCase>(
      () => GetRefreshTokenUseCase(sl()),
    );
    sl.registerLazySingleton<GetTokenUseCase>(
      () => GetTokenUseCase(sl()),
    );
    sl.registerLazySingleton<UserForgotPasswordUseCase>(
      () => UserForgotPasswordUseCase(sl()),
    );
    sl.registerLazySingleton<UserLoginUseCase>(
      () => UserLoginUseCase(sl()),
    );
    sl.registerLazySingleton<UserRegisterUseCase>(
      () => UserRegisterUseCase(sl()),
    );
  }
}
