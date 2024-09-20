import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';

class BookmarkViewAppBar extends StatelessWidget {
  const BookmarkViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        'Bookmarked',
        style: AppStyles.styleBold15(context).copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
