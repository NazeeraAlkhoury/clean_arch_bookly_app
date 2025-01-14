import 'package:clean_arch_bookly_app/features/home/data/models/books_model/volume_info_model.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/book_item_data.dart';

class BookItemDataModel extends BookItemData {
  const BookItemDataModel({
    required super.id,
    required super.volumeInfo,
  });

  factory BookItemDataModel.fromJson(Map<String, dynamic> json) =>
      BookItemDataModel(
        id: json['id'],
        volumeInfo: VolumeInfoModel.fromJson(
          json['volumeInfo'],
        ),
      );
}
