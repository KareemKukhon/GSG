import 'dart:html';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double widh = 91;
    double hght = 85;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          
          children: [
            Column(children: [
              SizedBox(
                height: screenHeight * 0.4,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  color: Color.fromRGBO(162, 197, 69, 1),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color: Color.fromRGBO(249, 255, 228, 20),
                                ),
                                Icon(
                                  Icons.mail_outline,
                                  color: Color.fromRGBO(249, 255, 228, 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "Green tea",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF7F4F4)),
                        ),
                        Text(
                          textAlign: TextAlign.right,
                          "Signature product",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(249, 255, 228, 5),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.currency_yuan,
                              size: 20,
                              color: Color.fromRGBO(249, 255, 228, 5),
                            ),
                            Text(
                              "36",
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(249, 255, 243, 1),
                              ),
                            )
                          ],
                        )
                      ]
                      ),
                ),
              ),
            ]),
            Positioned(
              top: screenHeight * 0.35,
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                  width: screenWidth,
                  height: screenHeight * 0.65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Particulars",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "The specialty of this shop is fresh cream ice cream with a full cup of tea." +
                            "ice drink is more delicious summer must be yo~",
                        style: TextStyle(
                            fontSize: 16, color: Color.fromARGB(159, 83, 83, 83)
                            //fontWeight: FontWeight.bold
                            ),
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 40)),
                          Icon(Icons.star,
                              size: 17,
                              color: Color.fromRGBO(175, 189, 102, 15)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.star,
                              size: 17,
                              color: Color.fromRGBO(175, 189, 102, 15)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.star,
                              size: 17,
                              color: Color.fromRGBO(175, 189, 102, 15)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.star,
                              size: 17,
                              color: Color.fromRGBO(175, 189, 102, 15)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.star,
                              size: 17,
                              color: Color.fromRGBO(175, 189, 102, 15)),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: widh,
                            height: hght,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(238, 243, 221, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            padding: EdgeInsets.all(20),
                            child: SizedBox(
                              width: 200,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.speaker_group,
                                    color: Color.fromRGBO(135, 184, 32, 1),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
                                  Text("500ml",
                                      style: TextStyle(
                                        color: Color.fromRGBO(135, 184, 32, 1),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: widh,
                            height: hght,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(238, 243, 221, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.ac_unit,
                                  color: Color.fromRGBO(135, 184, 32, 1),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
                                Text("Less ice",
                                    style: TextStyle(
                                      color: Color.fromRGBO(135, 184, 32, 1),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: widh,
                            height: hght,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(238, 243, 221, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.person_pin_circle_rounded,
                                  color: Color.fromRGBO(135, 184, 32, 1),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
                                Text("Sugar",
                                    style: TextStyle(
                                      color: Color.fromRGBO(135, 184, 32, 1),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                      Text(
                        "Service",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        width: 275,
                        child: Text(
                          "Businesses give it away for free Minus 2 yuan for every 30 yuan fo goos",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(159, 83, 83, 83)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.favorite_border_sharp,
                            color: Colors.grey,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                padding: EdgeInsets.fromLTRB(40, 25, 40, 25),
                                textStyle: TextStyle(fontSize: 18),
                                backgroundColor:
                                    Color.fromRGBO(135, 194, 14, 1)),
                            child: Text("Purchased"),
                          ),
                          SizedBox(
                            width: 15,
                          )
                        ],
                      )
                    ],
                  )),
            ),
            Positioned(
              left: screenWidth * 0.4,
              top: screenHeight * 0.1,
              child: Image.asset(
                "images/greentea.png",
                width: 300,
                height: 270,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
