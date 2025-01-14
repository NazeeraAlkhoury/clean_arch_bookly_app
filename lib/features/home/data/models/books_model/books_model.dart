import 'package:clean_arch_bookly_app/features/home/data/models/books_model/book_item_data_model.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/book_item_data.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';

class BooksModel extends Books {
  const BooksModel({required super.items});

  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
        items: List<BookItemData>.from(
          json['items'].map(
            (item) => BookItemDataModel.fromJson(item),
          ),
        ),
      );
}
