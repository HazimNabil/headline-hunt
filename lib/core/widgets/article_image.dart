import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../utils/app_colors.dart';

class ArticleImage extends StatelessWidget {
  final String imageUrl;
  final double? height, width;

  const ArticleImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: BoxFit.fill,
      errorWidget: (context, url, error) {
        return Container(
          color: AppColors.secondaryColor,
          child: const Icon(Icons.error),
        );
      },
    );
  }
}
