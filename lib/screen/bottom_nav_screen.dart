import 'package:flutter/material.dart';

import '../const/colors.dart';
import 'first_screen.dart';

int navIndex = 0;

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  static const String screenName = '/bottom_nav_screen';

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Widget> screensList = [
    FirstScreen(),
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.purple),
    Container(color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            navIndex = 2;
          });
        },
        child: Icon(Icons.shopping_cart_outlined),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        notchMargin: 20,
        color: MyColors.lightColor,
        shape: CircularNotchedRectangle(),

        child: Row(
          children: [
            NavItemWidget(
              icon: Icons.home_outlined,
              onTap: () {
                setState(() {
                  navIndex = 0;
                });
              },
              itemBackgroundColor: navIndex == 0
                  ? MyColors.primaryColorLight
                  : MyColors.lightColor,
            ),
            NavItemWidget(
              icon: Icons.bookmark_border,
              onTap: () {
                setState(() {
                  navIndex = 1;
                });
              },
              itemBackgroundColor: navIndex == 1
                  ? MyColors.primaryColorLight
                  : MyColors.lightColor,
            ),

            Expanded(child: SizedBox()),

            NavItemWidget(
              icon: Icons.chat_outlined,
              onTap: () {
                setState(() {
                  navIndex = 3;
                });
              },
              itemBackgroundColor: navIndex == 3
                  ? MyColors.primaryColorLight
                  : MyColors.lightColor,
            ),
            NavItemWidget(
              icon: Icons.settings_outlined,
              onTap: () {
                setState(() {
                  navIndex = 4;
                });
              },
              itemBackgroundColor: navIndex == 4
                  ? MyColors.primaryColorLight
                  : MyColors.lightColor,
            ),
          ],
        ),
      ),
      body: Center(child: screensList[navIndex]),
    );
  }
}

class NavItemWidget extends StatelessWidget {
  const NavItemWidget({
    super.key,
    required this.onTap,
    required this.icon,
    required this.itemBackgroundColor,
  });

  final VoidCallback onTap;

  final IconData icon;

  final Color itemBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 2),
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: itemBackgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),

          child: Icon(icon, color: MyColors.primaryColor, size: 28),
        ),
      ),
    );
  }
}
