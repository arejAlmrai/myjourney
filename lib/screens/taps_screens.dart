import 'package:flutter/material.dart';
import 'package:travel_app/models/trip.dart';
import 'package:travel_app/screens/categories_screen.dart';
import 'package:travel_app/screens/favorites_screen.dart';
import 'package:travel_app/widgets/app_drawer.dart';

class TapsScreens extends StatefulWidget {
  const TapsScreens( {super.key, required this.favoriteTrips});

  final List<Trip> favoriteTrips;

  @override
  State<TapsScreens> createState() => _TapsScreensState();
}

class _TapsScreensState extends State<TapsScreens> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenindex = index;
    });
  }

  int _selectedScreenindex = 0;

   late List<Map<String, Object>> _screen;
  @override
  void initState() {
  _screen=  [
    {"Screen": CategoriesScreen(), "Title": "التصنيفات"},
    {"Screen": FavoritesScreen(favoriteTrips: widget.favoriteTrips),
     "Title": "المفضلة"},
  ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Center(
          child: Text(
            _screen[_selectedScreenindex]['Title'] as String,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black87,
        currentIndex: _selectedScreenindex,
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "التصنيفات",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "المفضلة",
          ),
        ],
      ),
      body: _screen[_selectedScreenindex]['Screen'] as Widget,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:travel_app/screens/categories_screen.dart';
// import 'package:travel_app/screens/favorites_screen.dart';

// class TapsScreens extends StatelessWidget {
//   const TapsScreens({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("  دليل سياحي"),
//           bottom: TabBar(
//             tabs: [Tab(icon: Icon(Icons.dashboard), text: "التصنيفات"),
//             Tab(icon: Icon(Icons.star), text: "المفضلة")],
//           ),
//         ),
//         body: TabBarView(children: [
//           CategoriesScreen(),
//           FavoritesScreen(),
//         ]),
//       ),
//     );
//   }
// }
