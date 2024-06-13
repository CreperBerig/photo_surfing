import 'package:flutter/material.dart';

import '../view.dart';

class PhotoFeedScreen extends StatelessWidget {
  const PhotoFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'Photo feed',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 24),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
            indicatorWeight: 4,
            tabs: [
              Text("All photos"),
              Text("Favorite"),
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: [
              AllPhotoScreen(),
              FavoriteAutorsPhotoScreen()
            ],
          ),
        )
      )
    );
  }
}