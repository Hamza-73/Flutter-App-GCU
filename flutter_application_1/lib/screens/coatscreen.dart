import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/appbar.dart';
import 'package:flutter_application_1/common/bottomdrawer.dart';
import '../common/menudrawer.dart';

class CoatScreen extends StatelessWidget {
  const CoatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      drawer: MenuDrawer(),
      bottomNavigationBar: MyBottomNavBar(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/coatscreen.jpg"), fit: BoxFit.cover)),
        child: Center(
            child: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              // borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(179, 44, 43, 43)),
          child: const Text(
            "Wrap Yourself Up in Style",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        )),
      ),
    );
  }
}
