import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_drawer.dart';

class FiltersScreens extends StatelessWidget {
  const FiltersScreens({super.key});

  static const screenRoute = "/filters";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("الفلترة")),
      body: Center(child: Text("this is filters page")),
    );
  }
}
