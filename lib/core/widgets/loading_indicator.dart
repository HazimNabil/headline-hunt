import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../features/home/presentation/views/widgets/article_list.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Skeletonizer(
      child: ArticleList(),
    );
  }
}
