import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/caregory_trips_screen.dart';
import 'package:travel_app/screens/categories_screen.dart';

class CategoryItem extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;
  CategoryItem({super.key, this.title, this.imageUrl, this.id});

  void selectCategory(BuildContext ctx) {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => CaregoryTripsScreen(categoryId: id, categoryTitle: title)));
    
    @override
    Widget build(BuildContext context) {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell
    (

      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
      child: Stack(            
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
      
            child: Image.network(
              imageUrl!,
              fit: BoxFit.cover,
      
              width: double.infinity,
              height: double.infinity,
            ),
          ),
      
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
      
            child: Text(
              title!,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
      
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
