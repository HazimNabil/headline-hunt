import 'package:flutter/material.dart';

import 'bookmark_view_app_bar.dart';

class BookmarkViewBody extends StatelessWidget {
  const BookmarkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 22),
          ),
          SliverToBoxAdapter(
            child: BookmarkViewAppBar(),
          ),
        ],
      ),
    );
  }
}
