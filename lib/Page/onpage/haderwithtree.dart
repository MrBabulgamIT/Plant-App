import 'package:flutter/material.dart';
import 'package:plant_app/Page/nextpage.dart';
import 'package:plant_app/extra/colordemo.dart';

class HeaderWithTreeColumn extends StatelessWidget {
  const HeaderWithTreeColumn({
    Key? key,
    required this.size,
    required this.image,
    required this.treeTittle,
    required this.treeCountry,
    required this.taka,
  }) : super(key: key);

  final Size size;
  final String image, treeTittle, treeCountry, taka;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(31, 179, 174, 174)),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              (context),
              MaterialPageRoute(
                  builder: (context) => NextPage(
                      image: image,
                      tittleImage: treeTittle,
                      countryImage: treeCountry,
                      price: taka)));
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        treeTittle,
                        style: Theme.of(context).textTheme.button,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(treeCountry,
                          style:
                              TextStyle(color: cPrimaryColor.withOpacity(0.5))),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "\$" + taka,
                    style: TextStyle(color: cPrimaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
