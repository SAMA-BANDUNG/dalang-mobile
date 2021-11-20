import 'package:dalang_mobile/domain/authentication/domain/entities/result_login.dart';
import 'package:dalang_mobile/domain/authentication/domain/repositories/authentication_repository.dart';
import 'package:dalang_mobile/shared_library/failure/failure.dart';
import 'package:dalang_mobile/shared_library/use_case/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UserLoginUseCase extends UseCase<ResultLogin, LoginParams> {
  final AuthenticationRepository _repository;

  UserLoginUseCase(this._repository);

  @override
  Future<Either<Failure, ResultLogin>> call(LoginParams params) async {
    return _repository.login(params);
  }
}

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [
        email,
        password,
      ];
}
