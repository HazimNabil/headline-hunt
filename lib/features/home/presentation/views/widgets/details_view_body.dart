import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/images.dart';

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
      ],
    );
  }
}
