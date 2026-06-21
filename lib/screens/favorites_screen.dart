import 'package:flutter/material.dart';
import 'package:travel_app/models/trip.dart';
import 'package:travel_app/widgets/trip_item.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({required this.favoriteTrips});
  final List<Trip> favoriteTrips;

  @override
  Widget build(BuildContext context) {
    if (favoriteTrips.isEmpty) {
      return Scaffold(
        body: Center(child: Text("ليس لديك أي رحلة في قائمة المفضلة")),
      );
    } else {
      return      ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id: favoriteTrips[index].id,
            title: favoriteTrips[index].title,
            imageUrl: favoriteTrips[index].imageUrl,
            duration: favoriteTrips[index].duration,
            tripType: favoriteTrips[index].tripType,
            season: favoriteTrips[index].season,
            // removeItem: _removeTrip,
          );
        },

        itemCount: favoriteTrips.length,
      );
    }
  }
}
