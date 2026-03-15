import 'package:flutter/material.dart';
import 'package:travel_app/models/trip.dart';
import 'package:travel_app/screens/trip_detail_screen.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;
  final Function(String) removeItem;
  const TripItem({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.tripType,
    required this.season,
    required this.removeItem,
  });

  String get seasonText {
    switch (season) {
      case Season.Winter:
        return 'شتاء';
        // break;
      case Season.Spring:
        return 'ربيع';
        // break;
      case Season.Summer:
        return 'صيف';
        // break;
      case Season.Autumn:
        return 'خريف';
        // break;
      // default:
        // return 'غير معروف';
    }
  }

  String get TripTypeText {
    switch (tripType) {
      case TripType.Exploration:
        return 'استكشاف';
      // break;
      case TripType.Recovery:
        return 'نقاهة';
      // break;
      case TripType.Activities:
        return 'أنشطة';
      // break;
      case TripType.Therapy:
        return 'معالجة';
      // break;
      // default:
      //   return 'غير معروف';
    }
  }

  void selectTrip(BuildContext context) {
    Navigator.of(
      context,
    ).pushNamed(TripDetailScreen.screenRoute, arguments: id).then((result) {
      if (result != null) {
        removeItem(result as String);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.7),
                      ],
                      stops: [0.6, 1],
                    ),
                  ),

                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.today, color: Colors.yellow),
                      SizedBox(width: 6),
                      Text("$duration  يوم"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.sunny, color: Colors.yellow),
                      SizedBox(width: 6),
                      Text(seasonText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.today, color: Colors.yellow),
                      SizedBox(width: 6),
                      Text(TripTypeText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
