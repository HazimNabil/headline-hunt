import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/functions/format_date.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/features/bookmark/data/repos/bookmark_repo.dart';
import 'package:headline_hunt/features/bookmark/presentation/manager/bookmarked_articles_cubit/bookmarked_articles_cubit.dart';

class ArticleTileInfo extends StatefulWidget {
  final Article article;
  final BookmarkRepo bookmarkRepo;

  const ArticleTileInfo({
    super.key,
    required this.article,
    required this.bookmarkRepo,
  });

  @override
  State<ArticleTileInfo> createState() => _ArticleTileInfoState();
}

class _ArticleTileInfoState extends State<ArticleTileInfo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.article.title,
            style: AppStyles.styleBold14(context),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          Text(
            widget.article.author,
            style: AppStyles.styleMedium13(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                widget.article.category,
                style: AppStyles.styleBold13(context),
              ),
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 3,
                backgroundColor: AppColors.secondaryColor,
              ),
              const SizedBox(width: 10),
              Text(
                formatDate(widget.article.publishedAt),
                style: AppStyles.styleMedium13(context),
              ),
              const Spacer(),
              IconButton(
                onPressed: toggleBookmark,
                icon: getBookmarkIcon(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void toggleBookmark() {
    widget.bookmarkRepo.toggleBookmark(widget.article);
    setState(() {});
    final cubit = context.read<BookmarkedArticlesCubit>();
    cubit.fetchBookmarkedArticles(widget.article.category);
  }

  SvgPicture getBookmarkIcon() {
    final String bookmarkIcon;
    final isBookmarked = widget.bookmarkRepo.isBookmarked(widget.article.id);
    if (isBookmarked) {
      bookmarkIcon = Images.imagesBookmarkSelected;
    } else {
      bookmarkIcon = Images.imagesBookmarkUnselected;
    }
    return SvgPicture.asset(bookmarkIcon);
  }
}
