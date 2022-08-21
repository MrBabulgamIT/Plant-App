import 'package:flutter/material.dart';

class BottomRow extends StatelessWidget {
  BottomRow({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        width: size.width * 0.4,
        height: 200,
      ),
    );
  }
}
