import 'package:dalang_mobile/domain/authentication/domain/entities/result_register.dart';
import 'package:dalang_mobile/domain/authentication/domain/repositories/authentication_repository.dart';
import 'package:dalang_mobile/shared_library/failure/failure.dart';
import 'package:dalang_mobile/shared_library/use_case/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UserRegisterUseCase extends UseCase<ResultRegister, RegisterParams> {
  final AuthenticationRepository _repository;

  UserRegisterUseCase(this._repository);

  @override
  Future<Either<Failure, ResultRegister>> call(RegisterParams params) async {
    return _repository.register(params);
  }
}

class RegisterParams extends Equatable {
  @override
  List<Object> get props => [];
}
