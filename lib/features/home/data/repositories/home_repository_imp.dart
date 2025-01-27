// ignore_for_file: avoid_print

import 'package:clean_arch_bookly_app/core/errors/failures.dart';
import 'package:clean_arch_bookly_app/core/functions/print_full_text.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/local/home_local_datasource.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/remote/home_remote_datasource.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:clean_arch_bookly_app/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImp extends HomeRepository {
  final HomeRemoteDatasource homeRemoteDatasource;
  final HomeLocalDatasource homeLocalDatasource;

  HomeRepositoryImp(
      {required this.homeLocalDatasource, required this.homeRemoteDatasource});
  @override
  Future<Either<Failure, Books>> getBooks() async {
    try {
      var result = homeLocalDatasource.featchBooks();

      if (result != null) {
        return right(result);
      } else {
        result = await homeRemoteDatasource.getBooks();

        return right(result);
      }
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
      var result = homeLocalDatasource.featchNewsetBooks();
      if (result != null) {
        return right(result);
      }
      result = await homeRemoteDatasource.getNewsetBooks();
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

  @override
  Future<Either<Failure, Books>> getSimilarBooks() async {
    try {
      var result = homeLocalDatasource.featchSimilerBooks();
      if (result != null) {
        return right(result);
      }
      result = await homeRemoteDatasource.getSimilerBooks();
      printFullText(result.toString());
      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(
          ServerFailure(
            e.toString(),
          ),
        );
      }
    }
  }
}
