import 'package:clean_arch_bookly_app/core/errors/failures.dart';
import 'package:clean_arch_bookly_app/core/usecases/base_usecase.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:clean_arch_bookly_app/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetSimilarUsecase extends BaseUseCases<Books, NoParameters> {
  final HomeRepository homeRepository;

  GetSimilarUsecase({required this.homeRepository});

  @override
  Future<Either<Failure, Books>> call(NoParameters parameters) async {
    return await homeRepository.getSimilarBooks();
  }
}
