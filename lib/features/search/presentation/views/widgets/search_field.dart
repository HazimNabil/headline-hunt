import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/features/search/presentation/manager/search_news_cubit/search_news_cubit.dart';

import 'prefix_search_icon.dart';
import 'suffix_clear_icon.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: _controller,
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
          prefixIcon: const PrefixSearchIcon(),
          suffixIcon: SuffixClearIcon(
            controller: _controller,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
