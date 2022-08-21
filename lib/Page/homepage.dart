import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plant_app/Page/bodydemo.dart';
import 'package:plant_app/extra/colordemo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: cPrimaryColor,
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ),
        body: BodyDemo());
  }
}
