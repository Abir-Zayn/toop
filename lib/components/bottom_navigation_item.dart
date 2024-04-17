import 'package:flutter/material.dart';

import '../pages/main_page.dart';

class BottomNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Menus current;
  final Menus name;
  const BottomNavigationItem(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.current,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
        icon: Icon(
         icon,
          size: 25,
          color: current == name
              ? Colors.black
              : Colors.black.withOpacity(0.3),
        ),
      );
  }
}
