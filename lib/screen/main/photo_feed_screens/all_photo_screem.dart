import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:photo_surfing/widgets/widgets.dart';

class AllPhotoScreen extends StatelessWidget {
  const AllPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomSearchBar(),
          Expanded(child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,

            children: List.generate(10, (index) {
              return Center(child: Image.asset(
                "img1.png",
                
              ),);
            }),
            )
          )
        ],
      ),
    );
  }
}