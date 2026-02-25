import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  CategoryItem({super.key, this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
            
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
    );
  }
}
