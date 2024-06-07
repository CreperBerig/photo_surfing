import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'App photo',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}