import 'package:flutter/material.dart';
import '../common/menudrawer.dart';
import '../common/bottomdrawer.dart';
import '../common/appbar.dart'; // Import the new CommonAppBar

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(), // Use the CommonAppBar here
      drawer: MenuDrawer(),
      bottomNavigationBar: MyBottomNavBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/home.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color.fromARGB(179, 44, 43, 43),
            ),
            child: const Text(
              "Be The Style Icon",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
