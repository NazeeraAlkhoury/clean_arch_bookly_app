import 'package:clean_arch_bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCases<Type, Parameters> {
  Future<Either<Failure, Type>> call([Parameters parameters]);
}

class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object?> get props => [];
}
