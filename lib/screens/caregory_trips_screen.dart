import 'package:flutter/material.dart';

class CaregoryTripsScreen extends StatelessWidget {
 
  final String? categoryId;
  final String? categoryTitle;
  const CaregoryTripsScreen({super.key, this.categoryId, this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: const Center(
        child: Text('قائمة  برحلات هذا التصنيف'),
      ),
    );
  }
}
