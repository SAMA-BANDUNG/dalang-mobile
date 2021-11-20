import 'package:equatable/equatable.dart';

class ResultRefreshToken extends Equatable {
  final String token;
  const ResultRefreshToken({required this.token});
  @override
  List<Object> get props => [token];
}