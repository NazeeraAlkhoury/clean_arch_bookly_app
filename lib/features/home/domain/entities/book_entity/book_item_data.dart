import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/volume_info.dart';
import 'package:equatable/equatable.dart';

class BookItemData extends Equatable {
  final int id;
  final Volumeinfo volumeInfo;

  const BookItemData({required this.id, required this.volumeInfo});

  @override
  List<Object?> get props => [id, volumeInfo];
}
