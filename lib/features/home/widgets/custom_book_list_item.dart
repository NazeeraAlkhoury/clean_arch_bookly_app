import 'package:clean_arch_bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomBookListViewItem extends StatelessWidget {
  const CustomBookListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        margin: const EdgeInsetsDirectional.only(start: 8),
        decoration: BoxDecoration(
          color: Colors.blue,
          image: const DecorationImage(
            image: AssetImage(AppAssets.testImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
