import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/features/search/presentation/manager/search_news_cubit/search_news_cubit.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        onSubmitted: (searchTerm) => triggerSearch(context, searchTerm),
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: GoogleFonts.cabin(
            textStyle: AppStyles.styleRegular15(context).copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: AppColors.secondaryBackgroundColor,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 10),
            child: SvgPicture.asset(
              Images.imagesSearchUnselected,
              height: 17,
              width: 17,
              fit: BoxFit.scaleDown,
              colorFilter: const ColorFilter.mode(
                AppColors.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Images.imagesClear,
                colorFilter: const ColorFilter.mode(
                  AppColors.secondaryColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  Future<void> triggerSearch(BuildContext context, String searchTerm) {
    return context.read<SearchNewsCubit>().searchNews(searchTerm);
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }
}
