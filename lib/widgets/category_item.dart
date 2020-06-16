import 'package:flutter/material.dart';
import 'package:local_event/models/category.dart';
import 'package:local_event/providers/category_provider.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final isSelected =
        categoryProvider.selectedCategoryId == category.categoryId;
    return GestureDetector(
      onTap: () {
        if (!isSelected)
          categoryProvider.updateSelectedCategory(category.categoryId);
      },
      child: Container(
        decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).accentColor
                : Theme.of(context).primaryColor,
            border: Border.all(
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).accentColor),
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(right: 16),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              category.icon,
              size: 50,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).accentColor,
            ),
            Text(
              category.name,
              style: TextStyle(
                  color: isSelected
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).accentColor),
            ),
          ],
        ),
      ),
    );
  }
}
