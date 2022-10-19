import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/data.dart';
import 'package:project1/shopping_cart.dart';
import 'globals.dart' as globals;
import 'list.dart';

class Venus extends StatefulWidget {
  const Venus({super.key});

  @override
  State<Venus> createState() => _VenusState();
}

late double screenHeight;
late double screenWidth;
bool Recommend = true;
bool BlackTea = false;
bool GreenTea = false;
bool MilkyTea = false;

class _VenusState extends State<Venus> {
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 40, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Venus",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.chat)
              ],
            ),
          ),
          Container(
            width: screenWidth - 50,
            margin: EdgeInsets.fromLTRB(0, 18, 15, 5),
            decoration: BoxDecoration(
                color: Color.fromRGBO(240, 240, 240, 1),
                borderRadius: BorderRadius.circular(20)),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Lemonade',
                  border: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 55.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  child: textedit("Recommend  ", Recommend),
                  onTap: () {
                    setState(() {
                      Recommend = true;
                      BlackTea = false;
                      GreenTea = false;
                      MilkyTea = false;
                    });
                  },
                ),
                InkWell(
                  child: textedit("Black tea  ", BlackTea),
                  onTap: () {
                    setState(() {
                      Recommend = false;
                      BlackTea = true;
                      GreenTea = false;
                      MilkyTea = false;
                    });
                  },
                ),
                InkWell(
                  child: textedit("Green tea", GreenTea),
                  onTap: () {
                    setState(() {
                      Recommend = false;
                      BlackTea = false;
                      GreenTea = true;
                      MilkyTea = false;
                    });
                  },
                ),
                InkWell(
                  child: textedit("Milky tea", MilkyTea),
                  onTap: () {
                    setState(() {
                      Recommend = false;
                      BlackTea = false;
                      GreenTea = false;
                      MilkyTea = true;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
              height: 110.h,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return mainScroll(data[index].image, data[index].name, index);
                },
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Will buy",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Container(
                height: screenHeight / 3,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        height: screenHeight,
                        child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return (DataWidget(data.toList()[index], index));
                          },
                        ));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget mainScroll(String image, String name, int index) {
  return Container(
    height: 70.h,
    width: screenWidth / 3.3,
    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
    margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
    decoration: BoxDecoration(
        color: data[index].name.contains("Green tea")
            ? Color.fromRGBO(162, 197, 69, 1)
            : Color.fromRGBO(193, 209, 81, 1),
        borderRadius: BorderRadiusDirectional.circular(20)),
    child: Column(
      children: [
        Image.asset(
          image,
          height: 110,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    ),
  );
}

Widget textedit(String categories, bool flag) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
    child: Text(categories,
        style: TextStyle(
          color: Colors.transparent,
          decoration: flag ? TextDecoration.underline : TextDecoration.none,
          fontSize: flag ? 20 : 15,
          decorationThickness: 4,
          decorationColor: Color.fromRGBO(162, 197, 69, 1),
          shadows: [
            Shadow(
              offset: Offset(0, -15),
              color: flag ? Color.fromRGBO(162, 197, 69, 1) : Colors.black,
            )
          ],
        )),
  );
}

Widget _bulidPageItem() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
        color: Colors.orange, borderRadius: BorderRadius.circular(20)),
  );
}
