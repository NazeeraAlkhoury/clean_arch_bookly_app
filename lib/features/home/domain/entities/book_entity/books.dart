import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/book_item_data.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'books.g.dart';

@HiveType(typeId: 0)
class Books extends Equatable {
  @HiveField(0)
  final List<BookItemData> items;

  const Books({required this.items});
  @override
  List<Object?> get props => [items];
}
