import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';

class ArticleTileInfo extends StatelessWidget {
  const ArticleTileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Leonardo DiCaprio Says ‘Don’t Look Up’ Speech Came From  A Place Of ‘Realizing The World Is Falling Apart’',
            style: AppStyles.styleBold14(context),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          Text(
            'By Mark Daniel',
            style: AppStyles.styleMedium13(context),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                'Entertainment',
                style: AppStyles.styleBold13(context),
              ),
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 3,
                backgroundColor: AppColors.secondaryColor,
              ),
              const SizedBox(width: 10),
              Text(
                '5m ago',
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
