import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/functions/format_date.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/features/bookmark/presentation/manager/bookmarked_articles_cubit/bookmarked_articles_cubit.dart';

class ArticleTileInfo extends StatefulWidget {
  final Article article;

  const ArticleTileInfo({super.key, required this.article});

  @override
  State<ArticleTileInfo> createState() => _ArticleTileInfoState();
}

class _ArticleTileInfoState extends State<ArticleTileInfo> {
  late final ValueNotifier<String> _bookmarkNotifier;

  @override
  void initState() {
    super.initState();

    final bookmarkCubit = context.read<BookmarkedArticlesCubit>();
    final isBookmarked = bookmarkCubit.isBookmarked(widget.article.id);
    final icon = isBookmarked
        ? Images.imagesBookmarkSelected
        : Images.imagesBookmarkUnselected;

    _bookmarkNotifier = ValueNotifier(icon);
  }

  @override
  void dispose() {
    _bookmarkNotifier.dispose();
    super.dispose();
  }

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
              ValueListenableBuilder(
                valueListenable: _bookmarkNotifier,
                builder: (context, value, child) {
                  return IconButton(
                    onPressed: toggleBookmark,
                    icon: SvgPicture.asset(value),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void toggleBookmark() {
    final cubit = context.read<BookmarkedArticlesCubit>();
    if (cubit.isBookmarked(widget.article.id)) {
      _bookmarkNotifier.value = Images.imagesBookmarkUnselected;
    } else {
      _bookmarkNotifier.value = Images.imagesBookmarkSelected;
    }
    cubit.toggleBookmark(widget.article);
  }
}
