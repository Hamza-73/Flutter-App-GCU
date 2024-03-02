import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.grey),
        BottomNavigationBarItem(
            icon: Icon(Icons.collections_sharp), label: "Coats"),
        BottomNavigationBarItem(
            icon: Icon(Icons.horizontal_distribute), label: "Hoodies"),
        BottomNavigationBarItem(
            icon: Icon(Icons.horizontal_distribute), label: "Sweat Shirts"),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/");
            break;
          case 1:
            Navigator.pushNamed(context, "/coat");
            break;
          case 2:
            Navigator.pushNamed(context, "/hoodies");
            break;
          case 3:
            Navigator.pushNamed(context, "/sweatshirt");
            break;
          default:
        }
      },
    );
  }
}
