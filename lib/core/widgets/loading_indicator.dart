import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../features/home/presentation/views/widgets/article_tile.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20, left: 16, right: 16),
            child: ArticleTile(),
          );
        },
      ),
    );
  }
}
