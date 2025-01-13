import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/book_item_data.dart';
import 'package:equatable/equatable.dart';

class Books extends Equatable {
  final List<BookItemData> items;

  const Books({required this.items});
  @override
  List<Object?> get props => [items];
}
