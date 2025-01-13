import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String errMessage;

  const Failure({required this.errMessage});

  @override
  List<Object?> get props => [errMessage];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errMessage});
}
