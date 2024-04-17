import 'package:flutter/material.dart';
import 'package:toop/config/app_routes.dart';
import 'package:toop/config/app_strings.dart';
import 'package:toop/styles/app_text.dart';

import '../components/toolbar.dart';

enum profilePageMenu { edit, logOut }

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar, PopupMenuButton=> Edit Now, Log Out
      appBar: toolBar(
        title: "Profile",
        actions: [
          PopupMenuButton<profilePageMenu>(
            onSelected: (value) {
              switch (value) {
                case profilePageMenu.edit:
                 Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case profilePageMenu.logOut:
                  Navigator.of(context).pushNamed(AppRoutes.login);
                  break;
                default:
              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: profilePageMenu.edit,
                  child: Row(
                    children: [
                      const Icon(Icons.edit),
                      const SizedBox(width: 10),
                      Text(
                        AppStrings.edit,
                        style: AppText.subtite2,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: profilePageMenu.logOut,
                  child: Row(
                    children: [
                      const Icon(Icons.logout),
                      const SizedBox(width: 10),
                      Text(
                        AppStrings.logOut,
                        style: AppText.subtite2,
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),

      body: Column(
        children: [

          //Instead of ClipRRect can be use CircleAvatar
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Image.network("https://picsum.photos/200", width: 90, height: 90),
            ),

          const SizedBox(height: 20),

          Text(
            'Abir Zayn',
            style: AppText.header1,
          ),

          Text(
            "United International University",
            style: AppText.subtite2,
          ),
          const SizedBox(height: 20),
          Container(
            height: 1,
            color: Colors.black,
          ),
          const SizedBox(height: 10),

          //Followers, Post, Following Content
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Followers",
                    style: AppText.subtite1,
                  ),
                  Text(
                    "2.1K",
                    style: AppText.body1,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Post",
                    style: AppText.subtite1,
                  ),
                  Text(
                    "2",
                    style: AppText.body1,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Following",
                    style: AppText.subtite1,
                  ),
                  Text(
                    "120",
                    style: AppText.body1,
                  ),
                ],
              )
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          Text('Data'),
        ],
      ),
    );
  }
}
