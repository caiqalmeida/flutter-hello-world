import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppControler.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppControler.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: HomePage(),
          );
        });
  }
}
