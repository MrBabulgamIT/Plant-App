import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plant_app/extra/colordemo.dart';

class NextPageColumn extends StatelessWidget {
  NextPageColumn({Key? key, required this.imageicon}) : super(key: key);

  String imageicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: cbackground,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: Colors.black.withOpacity(0.52)),
          BoxShadow(
              offset: Offset(-15, -15), blurRadius: 20, color: Colors.white),
        ],
      ),
      child: Image(image: AssetImage(imageicon)),
    );
  }
}
