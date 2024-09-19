import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/features/home/data/repos/home_repo.dart';

class DetailsViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Article article;
  final HomeRepo homeRepo;

  const DetailsViewAppBar({
    super.key,
    required this.article,
    required this.homeRepo,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 19,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: getBookmarkIcon(),
        ),
      ],
    );
  }

  SvgPicture getBookmarkIcon() {
    final String bookmarkIcon;
    final isBookmarked = homeRepo.isBookmarked(article.id);
    if (isBookmarked) {
      bookmarkIcon = Images.imagesBookmarkSelected;
    } else {
      bookmarkIcon = Images.imagesBookmarkUnselected;
    }
    return SvgPicture.asset(bookmarkIcon);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
