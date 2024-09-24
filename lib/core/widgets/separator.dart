import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class Separator extends StatelessWidget {
  const Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 40,
      indent: 16,
      endIndent: 16,
      color: AppColors.secondaryBackgroundColor,
    );
  }
}
