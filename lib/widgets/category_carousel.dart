import 'package:flutter/material.dart';
import 'package:local_event/models/category.dart';
import 'package:local_event/providers/category_provider.dart';
import 'package:local_event/widgets/category_item.dart';
import 'package:provider/provider.dart';

class CategoryCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final List<Category> categories = categoryProvider.categories;

    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryItem(categories[index]),
      ),
    );
  }
}