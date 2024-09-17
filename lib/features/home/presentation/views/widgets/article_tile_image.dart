import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';

class ArticleTileImage extends StatelessWidget {
  final String image;

  const ArticleTileImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 137,
      height: 140,
      child: CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.fill,
        errorWidget: (context, url, error) {
          return Container(
            color: AppColors.secondaryColor,
            child: const Icon(Icons.error),
          );
        },
      ),
    );
  }
}
