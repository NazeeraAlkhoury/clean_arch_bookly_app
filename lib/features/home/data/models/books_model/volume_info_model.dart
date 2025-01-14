import 'package:clean_arch_bookly_app/features/home/data/models/books_model/image_links_model.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/volume_info.dart';

class VolumeInfoModel extends Volumeinfo {
  const VolumeInfoModel({
    required super.title,
    required super.imageLinks,
    required super.authors,
    required super.categories,
    required super.averageRating,
    required super.ratingsCount,
    required super.previewLink,
  });

  factory VolumeInfoModel.fromJson(Map<String, dynamic> json) =>
      VolumeInfoModel(
        title: json['title'],
        imageLinks: json['imageLinks'] != null
            ? ImageLinksModel.fromJson(json['imageLinks'])
            : null,
        authors: List<String>.from(
          json['authors'].map(
            (autor) => autor.toString(),
          ),
        ),
        categories: List<String>.from(
          json['categories'].map(
            (category) => category.toString(),
          ),
        ),
        averageRating: json['averageRating'] as num?,
        ratingsCount: json['ratingsCount'] ?? 0,
        previewLink: json['previewLink'],
      );
}
