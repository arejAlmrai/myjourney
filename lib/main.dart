import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/screens/caregory_trips_screen.dart';
import 'package:travel_app/screens/categories_screen.dart';

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
          headlineSmall: TextStyle(color: Colors.black),
        ),
      ),
      // home: const CategoriesScreen(),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        '/category_trip': (ctx) => CaregoryTripsScreen(),
      },
    );
  }
}
