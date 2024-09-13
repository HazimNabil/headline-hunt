import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';

class CategoryItem extends StatelessWidget {
  final String category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        category,
        style: AppStyles.styleMedium14(context),
      ),
    );
  }
}
