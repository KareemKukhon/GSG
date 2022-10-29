import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'data.dart';
import 'globals.dart';

class shoppingCart extends StatefulWidget {
  const shoppingCart({super.key});

  @override
  State<shoppingCart> createState() => _shoppingCartState();
}

class _shoppingCartState extends State<shoppingCart> {
  @override
  Widget build(BuildContext context) {
    multy();
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
      width: screenWidth / 1.1,
      height: screenHeight,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
            alignment: Alignment.topRight,
            child: Icon(Icons.remove_circle_outline_rounded),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shopping cart",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("A total of 3 Pices")
              ],
            ),
          ),
          Container(
            height: screenHeight / 2.5,
            width: screenWidth - 20,
            child: ListView.builder(
              itemCount: data.where((element) => element.cartFlag).length,
              itemBuilder: (context, index) {
                if (data[index].numberItemInCart > 0) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: data[index].name.contains("Green tea")
                                  ? Color.fromRGBO(162, 197, 69, 1)
                                  : Color.fromRGBO(193, 209, 81, 1),
                            ),
                            child: Image.asset(data
                                .where((element) => element.cartFlag)
                                .toList()[index]
                                .image)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data
                                  .where((element) => element.cartFlag)
                                  .toList()[index]
                                  .name,
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(data
                                .where((element) => element.cartFlag)
                                .toList()[index]
                                .type),
                            SizedBox(
                              height: 18,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.currency_yen_sharp,
                                  color: Color.fromRGBO(162, 197, 69, 1),
                                ),
                                Text(
                                  data
                                      .where((element) => element.cartFlag)
                                      .toList()[index]
                                      .price
                                      .toString(),
                                  style: TextStyle(
                                      color: Color.fromRGBO(162, 197, 69, 1)),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  sum1 = 0;
                                  data[index].numberItemInCart++;
                                  setState(() {});
                                },
                                child: Icon(Icons.add)),
                            Text(data
                                .where((element) => element.cartFlag)
                                .toList()[index]
                                .numberItemInCart
                                .toString()),
                            InkWell(
                                onTap: () {
                                  sum1 = 0;
                                  if (data
                                          .where((element) => element.cartFlag)
                                          .toList()[index]
                                          .numberItemInCart >
                                      0)
                                    data
                                        .where((element) => element.cartFlag)
                                        .toList()[index]
                                        .numberItemInCart--;
                                  setState(() {});
                                },
                                child: Icon(Icons.minimize))
                          ],
                        )
                      ],
                    ),
                  );
                } else
                  return widget;
              },
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(133, 194, 0, 1),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(40, 0, 0, 0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 27,
                    ),
                    Row(
                      children: [
                        Text(
                          "Total  ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.currency_yen_sharp,
                          color: Colors.white,
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  sum1.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  width: screenWidth - 290,
                ),
                Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
