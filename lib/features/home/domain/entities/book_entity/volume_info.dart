import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/image_links.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'volume_info.g.dart';

@HiveType(typeId: 2)
class Volumeinfo extends Equatable {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final ImageLinks? imageLinks;
  @HiveField(2)
  final List<String> authors;
  @HiveField(3)
  final List<String> categories;
  @HiveField(4)
  final num? averageRating;
  @HiveField(5)
  final int? ratingsCount;
  @HiveField(6)
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
