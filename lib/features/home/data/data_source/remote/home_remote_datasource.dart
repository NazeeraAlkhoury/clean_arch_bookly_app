import 'package:clean_arch_bookly_app/features/home/data/models/books_model/books_model.dart';

abstract class HomeRemoteDatasource {
  Future<BooksModel> getBooks();
  Future<BooksModel> getNewsetBooks();
}
