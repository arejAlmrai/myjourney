import 'package:flutter/material.dart';
import 'package:travel_app/screens/categories_screen.dart';
import 'package:travel_app/screens/favorites_screen.dart';

class TapsScreens extends StatefulWidget {
  const TapsScreens({super.key});

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

  final List<Widget> _screen = [CategoriesScreen(), FavoritesScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "دليل سياحي",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: _screen[_selectedScreenindex],
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
