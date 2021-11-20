import 'package:dalang_mobile/domain/authentication/domain/entities/result_token.dart';
import 'package:dalang_mobile/domain/authentication/domain/repositories/authentication_repository.dart';
import 'package:dalang_mobile/shared_library/failure/failure.dart';
import 'package:dalang_mobile/shared_library/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class GetTokenUseCase extends UseCase<ResultToken, NoParams> {
  final AuthenticationRepository _repository;

  GetTokenUseCase(this._repository);

  @override
  Future<Either<Failure, ResultToken>> call(NoParams params) async {
    return _repository.getToken(params);
  }
}
