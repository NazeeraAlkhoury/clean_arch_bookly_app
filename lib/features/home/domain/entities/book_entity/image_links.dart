import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String smallThumbnail;
  final String thumbnail;

  const ImageLinks({required this.smallThumbnail, required this.thumbnail});

  @override
  List<Object?> get props => [
        smallThumbnail,
        thumbnail,
      ];
}
