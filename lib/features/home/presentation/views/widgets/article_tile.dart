import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_router.dart';

import 'article_tile_info.dart';

class ArticleTile extends StatelessWidget {
  final Article article;

  const ArticleTile({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => context.push(AppRouter.detailsPath),
          child: Row(
            children: [
              SizedBox(
                width: 137,
                height: 140,
                child: CachedNetworkImage(
                  imageUrl: article.image,
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ArticleTileInfo(article: article),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        const Divider(
          color: AppColors.secondaryBackgroundColor,
        ),
      ],
    );
  }
}
