import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';

part 'image_links.g.dart';

@HiveType(typeId: 3)
class ImageLinks extends Equatable {
  @HiveField(0)
  final String smallThumbnail;
  @HiveField(1)
  final String thumbnail;

  const ImageLinks({required this.smallThumbnail, required this.thumbnail});

  @override
  List<Object?> get props => [
        smallThumbnail,
        thumbnail,
      ];
}
