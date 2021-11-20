import 'package:dalang_mobile/domain/authentication/domain/entities/result_forgot_password.dart';
import 'package:dalang_mobile/domain/authentication/domain/entities/result_login.dart';
import 'package:dalang_mobile/domain/authentication/domain/entities/result_register.dart';
import 'package:dalang_mobile/domain/authentication/domain/entities/result_token.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/get_refresh_token_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/user_forgot_password_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/user_login_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/user_register_usecase.dart';
import 'package:dalang_mobile/shared_library/failure/failure.dart';
import 'package:dalang_mobile/shared_library/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure,ResultLogin>> login(LoginParams loginParams);
  Future<Either<Failure,ResultRegister>> register(RegisterParams registerParams);
  Future<Either<Failure,ResultForgotPassword>> forgotPassword(ForgotPasswordParams forgotPasswordParams);
  Future<Either<Failure,ResultToken>> getToken(NoParams noParams);
  Future<Either<Failure,ResultToken>> getRefreshToken(RefreshTokenParams refreshTokenParams);
}