import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/app_router.dart';
import 'package:headline_hunt/core/utils/service_locator.dart';
import 'package:headline_hunt/core/widgets/article_image.dart';
import 'package:headline_hunt/features/bookmark/data/repos/bookmark_repo_impl.dart';

import 'article_tile_info.dart';

class ArticleTile extends StatelessWidget {
  final Article article;

  const ArticleTile({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => navigateToDetails(context),
          child: Row(
            children: [
              ArticleImage(
                imageUrl: article.image,
                height: 140,
                width: 137,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ArticleTileInfo(
                  article: article,
                  bookmarkRepo: locator.get<BookmarkRepoImpl>(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void navigateToDetails(BuildContext context) {
    context.push(
      AppRouter.detailsPath,
      extra: article,
    );
  }
}
