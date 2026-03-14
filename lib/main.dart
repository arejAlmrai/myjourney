import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/screens/caregory_trips_screen.dart';
import './screens/categories_screen.dart';
import './screens/filters_screens.dart';
import './screens/taps_screens.dart';
import 'package:travel_app/screens/trip_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale('ar'), // اللغة الافتراضية

      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'CascadiaMono',
        textTheme: ThemeData.light().textTheme.copyWith(
          headlineSmall: TextStyle(
            color: const Color.fromARGB(255, 252, 251, 251),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'CascadiaMono',
          ),
        ),
      ),
      // home: const CategoriesScreen(),
      routes: {
        '/': (ctx) => TapsScreens(),
        '/category_trip': (ctx) => CaregoryTripsScreen(),
        TripDetailScreen.screenRoute: (ctx) => TripDetailScreen(),
        FiltersScreens.screenRoute:(ctx)=>FiltersScreens(),
      },
    );
  }
}
