import 'package:flutter/material.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/category_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CategoryItem(category: 'Top');
  }
}
