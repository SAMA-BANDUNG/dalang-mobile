import 'package:dalang_mobile/domain/authentication/domain/entities/result_forgot_password.dart';
import 'package:dalang_mobile/domain/authentication/domain/entities/result_register.dart';
import 'package:dalang_mobile/domain/authentication/domain/repositories/authentication_repository.dart';
import 'package:dalang_mobile/shared_library/failure/failure.dart';
import 'package:dalang_mobile/shared_library/use_case/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UserForgotPasswordUseCase extends UseCase<ResultForgotPassword, ForgotPasswordParams> {
  final AuthenticationRepository _repository;

  UserForgotPasswordUseCase(this._repository);

  @override
  Future<Either<Failure, ResultForgotPassword>> call(ForgotPasswordParams params) async {
    return _repository.forgotPassword(params);
  }
}

class ForgotPasswordParams extends Equatable {
  @override
  List<Object> get props => [];
}
