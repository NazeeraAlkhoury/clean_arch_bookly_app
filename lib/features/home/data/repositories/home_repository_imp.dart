// ignore_for_file: avoid_print

import 'package:clean_arch_bookly_app/core/errors/failures.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/remote/home_remote_datasource.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:clean_arch_bookly_app/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImp extends HomeRepository {
  final HomeRemoteDatasource homeRemoteDatasource;

  HomeRepositoryImp({required this.homeRemoteDatasource});
  @override
  Future<Either<Failure, Books>> getBooks() async {
    try {
      final result = await homeRemoteDatasource.getBooks();
      return right(result);
    } catch (failure) {
      if (failure is DioException) {
        return left(
          ServerFailure.fromDioError(failure),
        );
      } else {
        return left(ServerFailure(failure.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, Books>> getNewestBooks() async {
    try {
      final result = await homeRemoteDatasource.getNewsetBooks();
      return right(result);
    } catch (failure) {
      if (failure is DioException) {
        return left(
          ServerFailure.fromDioError(failure),
        );
      } else {
        return left(
          ServerFailure(
            failure.toString(),
          ),
        );
      }
    }
  }
}
