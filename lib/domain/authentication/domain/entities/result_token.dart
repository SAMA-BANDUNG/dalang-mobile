import 'package:equatable/equatable.dart';

class ResultToken extends Equatable {
  final String token;
  const ResultToken({required this.token});
  @override
  List<Object> get props => [token];
}