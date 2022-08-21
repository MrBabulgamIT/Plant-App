import 'package:flutter/material.dart';
import 'package:plant_app/extra/colordemo.dart';

class TextwithFirstRow extends StatelessWidget {
  const TextwithFirstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cPrimaryColor2 = cPrimaryColor;
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: cDefaultPadding, vertical: cDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recommended',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          FlatButton(
              onPressed: () {},
              color: cPrimaryColor2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "New",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
