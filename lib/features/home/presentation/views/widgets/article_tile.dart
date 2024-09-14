import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/images.dart';

import 'article_tile_info.dart';

class ArticleTile extends StatelessWidget {
  const ArticleTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Images.imagesTestImage),
        const SizedBox(width: 10),
        const Expanded(
          child: ArticleTileInfo(),
        ),
      ],
    );
  }
}
