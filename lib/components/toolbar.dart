import 'package:flutter/material.dart';
import 'package:toop/styles/app_text.dart';

import '../styles/app_colors.dart';

class toolBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const toolBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      title: Text(title, style: AppText.header1,),
      centerTitle: false,
      actions: actions,
    );
  }

  //kToolbarHeight: This refers to a constant variable likely defined elsewhere in the codebase.
  //It presumably holds the default height of the app bar in Flutter.

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
