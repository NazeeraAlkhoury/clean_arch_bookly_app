import 'package:clean_arch_bookly_app/core/errors/failures.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, Books>> getBooks();
  Future<Either<Failure, Books>> getNewestBooks();
  Future<Either<Failure, Books>> getSimilarBooks();
}
