import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: SearchBar(
        controller: _controller,
        leading: Icon(Icons.search, color: Theme.of(context).colorScheme.outline,),
        hintText: 'Search',
      ),
    );
  }
}