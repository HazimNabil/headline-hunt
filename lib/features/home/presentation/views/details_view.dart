import 'package:flutter/material.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/service_locator.dart';
import 'package:headline_hunt/features/bookmark/data/repos/bookmark_repo_impl.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/details_view_body.dart';

import 'widgets/details_view_app_bar.dart';

class DetailsView extends StatelessWidget {
  final Article article;

  const DetailsView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailsViewAppBar(
        article: article,
        bookmarkRepo: locator.get<BookmarkRepoImpl>(),
      ),
      body: DetailsViewBody(article: article),
    );
  }
}
