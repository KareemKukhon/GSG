import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/data.dart';
import 'package:project1/shopping_cart.dart';
import 'package:project1/venus.dart';
import 'globels.dart' as globals;
import 'list.dart';

class mainScreen extends StatefulWidget {
  @override
  State<mainScreen> createState() => _mainScreenState();
}

late double screenHeight;
late double screenWidth;

class _mainScreenState extends State<mainScreen> {
  @override
  PageController pageController = PageController();
  int currentIndex = 0;
  //globals.id;

  Widget build(BuildContext context) {
    log("_mainScreenState = ${globals.id}");

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: const Size(262, 577),
      builder: (context, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: screenHeight,
              child: PageView(
                controller: pageController,
                children: [Venus(), shoppingCart()],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              selectedItemColor: Color.fromRGBO(162, 197, 69, 1),
              onTap: (index) {
                currentIndex = index;
                setState(() {});
                pageController.animateToPage(index,
                    duration: Duration(microseconds: 100),
                    curve: Curves.linear);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: "Shop",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_sharp), label: "My"),
              ]),
        );
      },
    );
  }
}
