import 'package:flutter/material.dart';
import 'package:travel_app/app_data.dart';
import 'package:travel_app/models/trip.dart';
import 'package:travel_app/widgets/trip_item.dart';

class CaregoryTripsScreen extends StatefulWidget {
  @override
  State<CaregoryTripsScreen> createState() => _CaregoryTripsScreenState();
}

class _CaregoryTripsScreenState extends State<CaregoryTripsScreen> {
  String? categoryTitle;
  List<Trip> displayTrips = [];
  @override
  void initState() {
    super.initState();
  }

  bool _loadedInitData = false;
  @override
  void didChangeDependencies() {
   if(!_loadedInitData){
     final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>?;
    final categoryId = routeArgument?['id'];
    categoryTitle = routeArgument?['title'];
    displayTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
   }
    _loadedInitData = true;
    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      displayTrips.removeWhere((trip) => trip.id == tripId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('صفحة الرحلات ')),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id: displayTrips[index].id,
            title: displayTrips[index].title,
            imageUrl: displayTrips[index].imageUrl,
            duration: displayTrips[index].duration,
            tripType: displayTrips[index].tripType,
            season: displayTrips[index].season,
            removeItem: _removeTrip,
          );
        },

        itemCount: displayTrips.length,
      ),
    );
  }
}
