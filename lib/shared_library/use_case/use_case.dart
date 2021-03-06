import 'package:dalang_mobile/shared_library/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure,T>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}