import 'package:flutter/material.dart';
import 'package:plant_app/extra/colordemo.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            padding: EdgeInsets.only(
                left: cDefaultPadding,
                right: cDefaultPadding,
                bottom: 36 + cDefaultPadding),
            decoration: BoxDecoration(
              color: cPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Hi Jony",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image(
                  image: AssetImage("images/plant.png"),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                left: cDefaultPadding,
                right: cDefaultPadding,
              ),
              margin: EdgeInsets.only(
                left: cDefaultPadding,
                right: cDefaultPadding,
              ),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: cPrimaryColor,
                        blurRadius: 70,
                        offset: Offset(0, 10))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: ((value) => {}),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: cPrimaryColor),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                    color: cPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
