import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/book_item_data.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  final BookItemData bookItemData;
  const BookDetailsView({super.key, required this.bookItemData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsBody(
          bookItemData: bookItemData,
        ),
      ),
    );
  }
}
