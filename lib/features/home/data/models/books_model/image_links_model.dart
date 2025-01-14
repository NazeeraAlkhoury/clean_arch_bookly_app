import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/image_links.dart';

class ImageLinksModel extends ImageLinks {
  const ImageLinksModel({
    required super.smallThumbnail,
    required super.thumbnail,
  });

  factory ImageLinksModel.fromJson(Map<String, dynamic> json) =>
      ImageLinksModel(
        smallThumbnail: json['smallThumbnail'],
        thumbnail: json['thumbnail'],
      );
}
