import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toop/pages/profile_page.dart';
import '../components/bottom_navigation_item.dart';
import '../styles/app_colors.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigation(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }

  final pages = [
    const homePage(),
    const Center(
      child: Text("Favourite"),
    ),
    const Center(
      child: Text("Add Status"),
    ),
    const Center(
      child: Text("Messages"),
    ),
    const profilePage(),
  ];
}

enum Menus {
  home,
  favorite,
  add,
  messages,
  users,
}

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: BottomNavigationItem(
                      icon: Icons.home_filled,
                      onPressed: () {
                        onTap(Menus.home);
                      },
                      current: currentIndex,
                      name: Menus.home,
                    ),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                      icon: Icons.favorite_border_outlined,
                      onPressed: () {
                        onTap(Menus.favorite);
                      },
                      current: currentIndex,
                      name: Menus.favorite,
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: BottomNavigationItem(
                      icon: Icons.chat_bubble_outline_outlined,
                      onPressed: () {
                        onTap(Menus.messages);
                      },
                      current: currentIndex,
                      name: Menus.messages,
                    ),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                      icon: Icons.person_2_outlined,
                      onPressed: () {
                        onTap(Menus.users);
                      },
                      current: currentIndex,
                      name: Menus.users,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //This is for the position of the bg and indication icon on the bottom navigation bar
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 64,
                height: 64,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
