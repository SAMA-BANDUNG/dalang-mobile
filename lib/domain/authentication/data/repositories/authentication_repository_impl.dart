import 'package:dalang_mobile/domain/authentication/data/datasources/authentication_local_datasource.dart';
import 'package:dalang_mobile/domain/authentication/data/datasources/authentication_remote_datasource.dart';
import 'package:dalang_mobile/domain/authentication/domain/entities/result_forgot_password.dart';
import 'package:dalang_mobile/domain/authentication/domain/entities/result_login.dart';
import 'package:dalang_mobile/domain/authentication/domain/entities/result_register.dart';
import 'package:dalang_mobile/domain/authentication/domain/entities/result_token.dart';
import 'package:dalang_mobile/domain/authentication/domain/repositories/authentication_repository.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/get_refresh_token_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/user_forgot_password_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/user_login_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/user_register_usecase.dart';
import 'package:dalang_mobile/shared_library/failure/failure.dart';
import 'package:dalang_mobile/shared_library/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  late AuthenticationLocalDataSource _authenticationLocalDataSource;
  late AuthenticationRemoteDataSource _authenticationRemoteDataSource;
  AuthenticationRepositoryImpl({
    required AuthenticationLocalDataSource authenticationLocalDataSource,
    required AuthenticationRemoteDataSource authenticationRemoteDataSource,
  }) {
    _authenticationLocalDataSource = authenticationLocalDataSource;
    _authenticationRemoteDataSource = authenticationRemoteDataSource;
  }
  @override
  Future<Either<Failure, ResultLogin>> login(LoginParams loginParams) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ResultRegister>> register(
      RegisterParams registerParams) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ResultForgotPassword>> forgotPassword(
      ForgotPasswordParams forgotPasswordParams) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ResultToken>> getRefreshToken(
      RefreshTokenParams refreshTokenParams) {
    // TODO: implement getRefreshToken
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ResultToken>> getToken(NoParams noParams) {
    // TODO: implement getToken
    throw UnimplementedError();
  }
}
