import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';

abstract class HomeRepository {
  Future<Books> getBooks();
}
