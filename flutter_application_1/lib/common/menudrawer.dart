import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homescreen.dart';
import 'package:flutter_application_1/screens/coatscreen.dart';
import 'package:flutter_application_1/screens/hoodiescreen.dart';
import 'package:flutter_application_1/screens/sweatshirtscreen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: buildMenuItems(context)),
      backgroundColor: Colors.grey,
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    List<Widget> menuItems = [];

    menuItems.add(const DrawerHeader(
        child: Text(
      "Z Fitters",
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        letterSpacing: 1.5,
        fontStyle: FontStyle.italic,
      ),
    )));

    final Set<String> menuTitles = {"Home", "Coats", "Hoodies", "Sweat Shirts"};

    menuTitles.forEach((element) {
      menuItems.add(ListTile(
        title: Text(element,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 1.5,
            )),
        onTap: () {
          Widget screen = Container();

          switch (element) {
            case 'Home':
              screen = const HomeScreen();
              break;
            case 'Coats':
              screen = const CoatScreen();
              break;
            case 'Hoodies':
              screen = const HoodieScreen();
              break;
            case 'Sweat Shirts':
              screen = const SweatShirtScreen();
              break;
            default:
          }

          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    });
    return menuItems;
  }
}
