import 'package:flutter/material.dart';

class PhotoFeedScreen extends StatelessWidget {
  const PhotoFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Photo feed',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}