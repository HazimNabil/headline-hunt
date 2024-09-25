import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/core/widgets/status_image.dart';

class FailureWidget extends StatelessWidget {
  final String errorMessage;

  const FailureWidget({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StatusImage(
              image: Images.imagesError,
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
