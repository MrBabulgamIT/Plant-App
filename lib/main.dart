import 'package:flutter/material.dart';
import 'package:plant_app/Page/homepage.dart';
import 'package:plant_app/extra/colordemo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: cbackground,
        primaryColor: cPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: ctextcolor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
