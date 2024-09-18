import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/functions/format_date.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';

class ArticleTileInfo extends StatelessWidget {
  final Article article;

  const ArticleTileInfo({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title,
            style: AppStyles.styleBold14(context),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          Text(
            article.author,
            style: AppStyles.styleMedium13(context),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                article.category,
                style: AppStyles.styleBold13(context),
              ),
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 3,
                backgroundColor: AppColors.secondaryColor,
              ),
              const SizedBox(width: 10),
              Text(
                formatDate(article.publishedAt),
                style: AppStyles.styleMedium13(context),
              ),
              const Spacer(),
              SvgPicture.asset(Images.imagesBookmarkUnselected),
            ],
          ),
        ],
      ),
    );
  }
}
