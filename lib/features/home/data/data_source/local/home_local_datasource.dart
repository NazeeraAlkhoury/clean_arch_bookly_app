import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';

abstract class HomeLocalDatasource {
  Books featchBooks();
  Books featchNewsetBooks();
  Books featchSimilerBooks();
}
