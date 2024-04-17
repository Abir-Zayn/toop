import 'package:flutter/material.dart';
import 'package:toop/components/toolbar.dart';
import 'package:toop/config/app_routes.dart';
import 'package:toop/styles/app_colors.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toolBar(
        title: 'Toop',
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearby);
            },
            icon: const Icon(Icons.location_on)
          )
        ],
      ),
      body:Column(
        children: [
          
        ],
      )
    );
  }
}
