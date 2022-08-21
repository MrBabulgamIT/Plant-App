import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/Page/onpage/NextPageColumn.dart';
import 'package:plant_app/extra/colordemo.dart';

class NextPage extends StatefulWidget {
  NextPage(
      {Key? key,
      required this.image,
      required this.tittleImage,
      required this.countryImage,
      required this.price})
      : super(key: key);
  String image;
  String tittleImage, countryImage, price;

  @override
  State<NextPage> createState() =>
      _NextPageState(image, tittleImage, countryImage, price);
}

class _NextPageState extends State<NextPage> {
  String image;
  String tittleImage, countryImage, price;
  _NextPageState(this.image, this.tittleImage, this.countryImage, this.price);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.74,
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 25),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Image(
                                  image: AssetImage("images/bac.png"),
                                  width: 35,
                                  height: 35,
                                ),
                              )),
                        ),
                        Spacer(),
                        NextPageColumn(imageicon: 'images/card.png'),
                        SizedBox(
                          height: 30,
                        ),
                        NextPageColumn(imageicon: 'images/drop.png'),
                        SizedBox(
                          height: 30,
                        ),
                        NextPageColumn(imageicon: 'images/sun.png'),
                        SizedBox(
                          height: 30,
                        ),
                        NextPageColumn(imageicon: 'images/plus.png'),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(10, 10),
                                blurRadius: 60,
                                color: cPrimaryColor.withOpacity(0.40)),
                          ],
                          image: DecorationImage(
                              image: AssetImage(image), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60),
                          ),
                        ),
                        width: size.width * 0.75,
                        height: size.height * 0.8,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tittleImage,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text(
                                countryImage,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: cPrimaryColor.withOpacity(0.7)),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "\$0" + price,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: cPrimaryColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(50)),
                          color: cPrimaryColor),
                      child: Center(
                          child: Text(
                        "Buy Now",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      child: Center(
                          child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
