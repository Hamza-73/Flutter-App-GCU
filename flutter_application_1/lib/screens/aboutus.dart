import 'package:flutter/material.dart';

class AboutUSScreen extends StatefulWidget {
  const AboutUSScreen({super.key});

  @override
  State<AboutUSScreen> createState() => _AboutUSScreenState();
}

class _AboutUSScreenState extends State<AboutUSScreen> {
  String message = "";
  TextEditingController tecName = TextEditingController();
  late int counter;

  @override
  void initState() {
    counter = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About us"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: [
            TextField(
              controller: tecName,
              decoration: InputDecoration(hintText: "Please enter your name"),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: onButtonPress, child: Text("Click here!")),
            ),
            Text(message)
          ],
        ));
  }

  void onButtonPress() {
    setState(() {
      counter = counter + 1;
      message = "Welcome " +
          tecName.text +
          " to our application for the " +
          counter.toString() +
          " times";
    });
  }
}
