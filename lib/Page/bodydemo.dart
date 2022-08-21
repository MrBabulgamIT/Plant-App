import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/Page/onpage/bottomcolumn.dart';
import 'package:plant_app/Page/onpage/bottomrow.dart';
import 'package:plant_app/Page/onpage/haderwithtree.dart';
import 'package:plant_app/Page/onpage/headerwithsearchbox.dart';
import 'package:plant_app/Page/onpage/textwithfirstrow.dart';
import 'package:plant_app/extra/colordemo.dart';

class BodyDemo extends StatelessWidget {
  const BodyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TextwithFirstRow(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HeaderWithTreeColumn(
                      size: size,
                      image: "images/one.jpg",
                      treeTittle: 'Green Tree-1',
                      treeCountry: "USA",
                      taka: '7'),
                  SizedBox(
                    width: 10,
                  ),
                  HeaderWithTreeColumn(
                      size: size,
                      image: "images/five.jpg",
                      treeTittle: 'Green Tree-2',
                      treeCountry: "Russia",
                      taka: '5'),
                  SizedBox(
                    width: 10,
                  ),
                  HeaderWithTreeColumn(
                      size: size,
                      image: "images/three.jpg",
                      treeTittle: 'Green Tree-3',
                      treeCountry: "Inian",
                      taka: '11'),
                  SizedBox(
                    width: 10,
                  ),
                  HeaderWithTreeColumn(
                      size: size,
                      image: "images/four.jpg",
                      treeTittle: 'Green Tree-4',
                      treeCountry: "Bd",
                      taka: '4'),
                  SizedBox(
                    width: 10,
                  ),
                  HeaderWithTreeColumn(
                      size: size,
                      image: "images/one.jpg",
                      treeTittle: 'Green Tree-5',
                      treeCountry: "Canada",
                      taka: '5'),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          TextwithFirstRow(),
          BottomColumn(),
        ],
      ),
    );
  }
}
