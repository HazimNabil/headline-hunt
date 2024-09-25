import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';

class FailureWidget extends StatelessWidget {
  final String errorMessage;

  const FailureWidget({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Images.imagesError,
              height: screenSize.height / 2.5,
              width: screenSize.width / 2.5,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(height: 32),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: AppStyles.styleBold18(context).copyWith(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
