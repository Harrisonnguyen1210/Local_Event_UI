import 'package:flutter/material.dart';
import 'package:local_event/models/category.dart';
import 'package:local_event/providers/category_provider.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatefulWidget {
  final Category category;

  CategoryItem(this.category);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final isSelected =
        categoryProvider.selectedCategoryId == widget.category.categoryId;

    return GestureDetector(
      onTap: () =>
          categoryProvider.updateSelectedCategory(widget.category.categoryId),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).accentColor : Theme.of(context).primaryColor,
            border: Border.all(
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).accentColor),
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.category.icon,
              size: 50,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).accentColor,
            ),
            Text(
              widget.category.name,
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
