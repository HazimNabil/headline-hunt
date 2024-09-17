import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_router.dart';

import 'article_tile_image.dart';
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
              ArticleTileImage(image: article.image),
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
