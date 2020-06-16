import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_event/models/category.dart';

class CategoryProvider extends ChangeNotifier {
  var _selectedCategoryId = 0;

  final List<Category> _categories = [
    Category(
      categoryId: 0,
      name: "All",
      icon: Icons.search,
    ),
    Category(
      categoryId: 1,
      name: "Music",
      icon: Icons.music_note,
    ),
    Category(
      categoryId: 2,
      name: "Meetup",
      icon: Icons.location_on,
    ),
    Category(
      categoryId: 3,
      name: "Golf",
      icon: Icons.golf_course,
    ),
  ];

  List<Category> get categories{
    return _categories;
  }

  int get selectedCategoryId{
    return _selectedCategoryId; 
  }

  void updateSelectedCategory(int categoryId) {
    _selectedCategoryId = categoryId;
    notifyListeners();
  }
}
