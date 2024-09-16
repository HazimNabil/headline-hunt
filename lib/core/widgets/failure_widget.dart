import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';

class FailureWidget extends StatelessWidget {
  final String errorMessage;

  const FailureWidget({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 60,
          ),
          const SizedBox(height: 16),
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: AppStyles.styleBold18(context).copyWith(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
