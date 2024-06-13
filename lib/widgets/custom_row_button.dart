import 'package:flutter/material.dart';

class CustomRowButton extends StatelessWidget {
  final String messageText;
  final String buttonText;
  final String routeName;
  const CustomRowButton({
    super.key,
    required this.messageText,
    required this.buttonText,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          messageText,
          style: Theme.of(context).textTheme.labelSmall
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(routeName);
          },
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.displaySmall
          ),
        ),
      ],
    );
  }
}