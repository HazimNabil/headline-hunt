import 'package:flutter/material.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/category_item.dart';

class CategoryList extends StatelessWidget {
  final categories = const [
    'General',
    'Business',
    'Technology',
    'Entertainment',
    'Sports',
    'Politics',
    'Health',
    'Science',
  ];

  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          buildCategoryItem,
        ),
      ),
    );
  }

  Widget buildCategoryItem(index) {
    var isLast = index == categories.length - 1;
    return Padding(
      padding: EdgeInsets.only(right: isLast ? 0 : 10),
      child: CategoryItem(category: categories[index]),
    );
  }
}
