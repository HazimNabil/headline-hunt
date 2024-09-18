import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_body.dart';

class DetailsViewBody extends StatelessWidget {
  final Article article;

  const DetailsViewBody({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.sizeOf(context).height;
    return ListView(
      children: [
        CachedNetworkImage(
          imageUrl: article.image,
          height: screenHeight / 3.5,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) {
            return Container(
              color: AppColors.secondaryColor,
              child: const Icon(Icons.error),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ArticleBody(
            article: article,
          ),
        ),
      ],
    );
  }
}
