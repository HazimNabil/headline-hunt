import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatusImage extends StatelessWidget {
  final String image;
  final double scaleFactor;

  const StatusImage({
    super.key,
    required this.image,
    this.scaleFactor = 2.5,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    return SvgPicture.asset(
      image,
      height: screenSize.height / scaleFactor,
      width: screenSize.width / scaleFactor,
      fit: BoxFit.scaleDown,
    );
  }
}
