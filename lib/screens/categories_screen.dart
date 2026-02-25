import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_data.dart';
import 'package:travel_app/widgets/category_item.dart';
import '../app_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('دليل سياحي', textAlign: TextAlign.end),
        backgroundColor: Colors.blue,
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 8 / 7, // نسبة العرض إلى الارتفاع لكل عنصر في الشبكة
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map(
          (categoryData) => CategoryItem(
            title: categoryData.title,
            imageUrl: categoryData.imageUrl,
          ),
        ).toList(),
      ),
    );
  }
}
