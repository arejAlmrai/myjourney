import 'package:flutter/material.dart';
import 'package:travel_app/screens/filters_screens.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  ListTile ListTileMethod(String title, IconData icon, Function onTapLink) {
    return ListTile(
      leading: Icon(icon, size: 30, color: Colors.blue),
      title: Text(
        title,
        style: TextStyle(fontSize: 25, fontFamily: 'CascadiaMono-Regular'),
      ),

      onTap: () {
        onTapLink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 247, 245, 245),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.amber,
            alignment: Alignment.center,
            child: Text(
              "دليلك السياحي",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ListTileMethod("الرحلات", Icons.card_travel, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          ListTileMethod("التصفية", Icons.filter_list, () {
            Navigator.of(
              context,
            ).pushReplacementNamed(FiltersScreens.screenRoute);
          }),
        ],
      ),
    );
  }
}
