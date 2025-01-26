import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/volume_info.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'book_item_data.g.dart';

@HiveType(typeId: 1)
class BookItemData extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final Volumeinfo volumeInfo;

  const BookItemData({required this.id, required this.volumeInfo});

  @override
  List<Object?> get props => [id, volumeInfo];
}
