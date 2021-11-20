import 'package:dalang_mobile/domain/authentication/domain/entities/result_token.dart';
import 'package:dalang_mobile/domain/authentication/domain/repositories/authentication_repository.dart';
import 'package:dalang_mobile/shared_library/failure/failure.dart';
import 'package:dalang_mobile/shared_library/use_case/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRefreshTokenUseCase
    extends UseCase<ResultToken, RefreshTokenParams> {
  final AuthenticationRepository _repository;

  GetRefreshTokenUseCase(this._repository);

  @override
  Future<Either<Failure, ResultToken>> call(
      RefreshTokenParams params) async {
    return _repository.getRefreshToken(params);
  }
}

class RefreshTokenParams extends Equatable {
  final String token;

  const RefreshTokenParams({
    required this.token,
  });

  @override
  List<Object> get props => [
        token,
      ];
}
