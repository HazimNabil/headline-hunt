import 'package:flutter/material.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/category_item.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
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

  int activeIndex = 0;

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

  Widget buildCategoryItem(int index) {
    var isLast = index == categories.length - 1;
    return Padding(
      padding: EdgeInsets.only(right: isLast ? 0 : 10),
      child: GestureDetector(
        onTap: () => setState(() => activeIndex = index),
        child: CategoryItem(
          category: categories[index],
          isActive: activeIndex == index,
        ),
      ),
    );
  }
}
