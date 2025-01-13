import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/image_links.dart';
import 'package:equatable/equatable.dart';

class Volumeinfo extends Equatable {
  final String title;
  final ImageLinks? imageLinks;
  final List<String> authors;
  final List<String> categories;
  final num? averageRating;
  final int? ratingsCount;
  final String previewLink;

  const Volumeinfo({
    required this.title,
    required this.imageLinks,
    required this.authors,
    required this.categories,
    required this.averageRating,
    required this.ratingsCount,
    required this.previewLink,
  });

  @override
  List<Object?> get props => [
        title,
        imageLinks,
        authors,
        categories,
        averageRating,
        ratingsCount,
        previewLink,
      ];
}
