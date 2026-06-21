import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_drawer.dart';

class FiltersScreens extends StatefulWidget {
  static const screenRoute = "/filters";

  final Map<String, bool> currentFilters;
  final Function(Map<String, bool>) saveFilters;

  FiltersScreens(this.currentFilters, this.saveFilters);

  @override
  State<FiltersScreens> createState() => _FiltersScreensState();
}

class _FiltersScreensState extends State<FiltersScreens> {
  var _summer = false;
  var _winter = false;
  var _family = false;
  @override
  void initState() {
    _summer = widget.currentFilters['summer'] ?? false;
    _winter = widget.currentFilters['winter'] ?? false;
    _family = widget.currentFilters['family'] ?? false;

    super.initState();
  }

  Widget buildSwitchListTile(
    String title,
    String subtitle,
    var currentValue,
    Function(bool) updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("الفلترة"),
        actions: [
          IconButton(
            onPressed: () {
              final selectedFilters = {
                'summer': _summer,
                'winter': _winter,
                'family': _family,
              };
              widget.saveFilters(selectedFilters);
            },
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'الرحلات الصيفية فقط',
                  "إظهار الرحلات في فصل الصيف فقط",
                  _summer,
                  (newValue) {
                    setState(() {
                      _summer = newValue;
                    });
                  },
                ),

                buildSwitchListTile(
                  'الرحلات الشتوية فقط',
                  "إظهار الرحلات في فصل الشتاء فقط",
                  _winter,
                  (newValue) {
                    setState(() {
                      _winter = newValue;
                    });
                  },
                ),

                buildSwitchListTile(
                  'الرحلات العائلية ',
                  "إظهار الرحلات العائلية فقط",
                  _family,
                  (newValue) {
                    setState(() {
                      _family = newValue;
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
