import 'package:curso_flutterando_2022/app_controller.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
        animation: AppController.istance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.istance.isDartTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: LoginPage(),
          );
        });
  }
}
