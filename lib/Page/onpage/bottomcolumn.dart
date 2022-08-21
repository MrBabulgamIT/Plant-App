import 'package:flutter/material.dart';
import 'package:plant_app/Page/onpage/bottomrow.dart';

class BottomColumn extends StatelessWidget {
  const BottomColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            BottomRow(image: "images/four.jpg"),
            SizedBox(
              width: 10,
            ),
            BottomRow(image: "images/three.jpg"),
            SizedBox(
              width: 10,
            ),
            BottomRow(image: "images/five.jpg"),
            SizedBox(
              width: 10,
            ),
            BottomRow(image: "images/four.jpg"),
          ],
        ),
      ),
    );
  }
}
