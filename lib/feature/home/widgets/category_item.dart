import 'package:flutter/material.dart';
import 'package:flutter_test_app/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final bool isSelected;
  final Function(int) onPress;

  const CategoryItem(
      {super.key,
      required this.category,
      required this.onPress,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => onPress(category.id),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: isSelected ? Colors.grey : Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.03),
            child: Column(
              children: [
                Container(
                  width: screenWidth * 0.1,
                  height: screenWidth * 0.1,
                  child: category.icon,
                ),
                const SizedBox(height: 5),
                Text(
                  category.label,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
