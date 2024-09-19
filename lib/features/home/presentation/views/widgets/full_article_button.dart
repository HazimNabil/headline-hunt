import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_router.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';

class FullArticleButton extends StatelessWidget {
  const FullArticleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
      ),
      onPressed: () => context.push(AppRouter.fullArticlePath),
      child: Text(
        'Read Full Article',
        style: AppStyles.styleBold15(context).copyWith(
          color: AppColors.backgroundColor,
        ),
      ),
    );
  }
}
