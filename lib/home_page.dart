import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
          child: Switch(
              value: AppControler.instance.isDarkTheme,
              onChanged: (value) {
                AppControler.instance.changeTheme();
              })),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Need to encapsulate saying that we need to change state so flutter re-render
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
