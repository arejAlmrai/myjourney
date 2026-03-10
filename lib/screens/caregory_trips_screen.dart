import 'package:flutter/material.dart';
import 'package:travel_app/app_data.dart';

class CaregoryTripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>?;
    final categoryId = routeArgument?['id'] ;
    final categoryTitle = routeArgument?['title'] ;
    final filterTrips=Trips_data.where((trip){
      return trip.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة الرحلات '),
      ),
      body: ListView.builder(itemBuilder: (ctx,index){
        return Text(filterTrips[index].title);
      },
       
      itemCount:filterTrips.length ,
      
      ),
    
    );
  }
}
