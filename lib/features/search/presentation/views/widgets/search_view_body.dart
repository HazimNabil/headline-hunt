import 'package:flutter/material.dart';
import 'package:headline_hunt/features/search/presentation/views/widgets/search_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 22),
          ),
          SliverToBoxAdapter(
            child: SearchField(),
          ),
        ],
      ),
    );
  }
}
