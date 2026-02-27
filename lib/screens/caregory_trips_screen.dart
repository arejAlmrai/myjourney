import 'package:flutter/material.dart';

class CaregoryTripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>?;
    final categoryId = routeArgument?['id'] ;
    final categoryTitle = routeArgument?['title'] ;
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle ?? 'رحلات'),),
      body: const Center(child: Text('قائمة  برحلات هذا التصنيف')),
    );
  }
}
