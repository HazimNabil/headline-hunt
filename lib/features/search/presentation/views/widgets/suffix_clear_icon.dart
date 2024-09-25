import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/images.dart';

class SuffixClearIcon extends StatefulWidget {
  final TextEditingController controller;

  const SuffixClearIcon({super.key, required this.controller});

  @override
  State<SuffixClearIcon> createState() => _SuffixClearIconState();
}

class _SuffixClearIconState extends State<SuffixClearIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: IconButton(
        onPressed: () => widget.controller.clear(),
        icon: SvgPicture.asset(
          Images.imagesClear,
          colorFilter: const ColorFilter.mode(
            AppColors.secondaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }
}
