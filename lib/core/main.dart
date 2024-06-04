import 'package:flutter/material.dart';
import 'package:photo_surfing/core/light_theme.dart';
import 'package:photo_surfing/core/routes.dart';

void main() {
  runApp(const PhotoSurfing());
}

class PhotoSurfing extends StatelessWidget {
  const PhotoSurfing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light_theme,
      routes: routes,
    );
  }
}