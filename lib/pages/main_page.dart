import 'package:coffee_ui/pages/basket_page.dart';
import 'package:coffee_ui/pages/home_page.dart';
import 'package:coffee_ui/pages/notification_page.dart';
import 'package:coffee_ui/pages/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:coffee_ui/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget customBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      backgroundColor: backgroundColor1,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 10),
              child: Image.asset(
                'assets/images/home_icon.png',
                width: 21,
                color: currentIndex == 0 ? brownColor : greyColor,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 10),
              child: Image.asset(
                'assets/images/bag_icon.png',
                width: 20,
                color: currentIndex == 1 ? brownColor : greyColor,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 10),
              child: Image.asset(
                'assets/images/heart_icon.png',
                width: 21,
                color: currentIndex == 2 ? brownColor : greyColor,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 10),
              child: Image.asset(
                'assets/images/notif_icon.png',
                width: 21,
                color: currentIndex == 3 ? brownColor : greyColor,
              ),
            ),
            label: ''),
      ],
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return BasketPage();
      case 2:
        return WishlistPage();
      case 3:
        return NotificationPage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor1,
        bottomNavigationBar: customBottomNavBar(),
        body: body());
  }
}
