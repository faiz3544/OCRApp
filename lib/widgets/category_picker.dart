import 'package:flutter/material.dart';

class CategoryPicker extends StatelessWidget {
  final List<String> categories;
  final Function(String) onCategorySelected;

  CategoryPicker({required this.categories, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text('Select Category'),
      items: categories.map((String category) {
        return DropdownMenuItem<String>(
          value: category,
          child: Text(category),
        );
      }).toList(),
      onChanged: (String? selectedCategory) {
        if (selectedCategory != null) {
          onCategorySelected(selectedCategory);
        }
      },
    );
  }
}
