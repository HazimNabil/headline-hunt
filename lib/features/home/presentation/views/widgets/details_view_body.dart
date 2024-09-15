import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_body.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.sizeOf(context).height;
    return ListView(
      children: [
        Image.asset(
          Images.imagesTestImage,
          height: screenHeight / 3.5,
          fit: BoxFit.fill,
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: ArticleBody(),
        ),
      ],
    );
  }
}
