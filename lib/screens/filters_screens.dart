import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_drawer.dart';

class FiltersScreens extends StatefulWidget {
  const FiltersScreens({super.key});

  static const screenRoute = "/filters";

  @override
  State<FiltersScreens> createState() => _FiltersScreensState();
}

class _FiltersScreensState extends State<FiltersScreens> {
  var _isInSummer = false;
  var _isInWinter = false;
  var _isForFamily = false;

  Widget buildSwitchListTile(
    String title,
    String subtitle,
    var currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: updateValue(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("الفلترة")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'الرحلات الصيفية فقط',
                  "إظهار الرحلات في فصل الصيف فقط",
                  _isInSummer,
                  (newValue) {
                    setState(() {
                      _isInSummer = newValue;
                    });
                  },
                ),

                buildSwitchListTile(
                  'الرحلات الشتوية فقط',
                  "إظهار الرحلات في فصل الشتاء فقط",
                  _isInWinter,
                  (newValue) {
                    setState(() {
                      _isInWinter = newValue;
                    });
                  },
                ),

                buildSwitchListTile(
                  'الرحلات العائلية ',
                  "إظهار الرحلات العائلية فقط",
                  _isForFamily,
                  (newValue) {
                    setState(() {
                      _isForFamily = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
