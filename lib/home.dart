import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/data.dart';

import 'main_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(child:
    PageView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
      return _bulidPageItem(1);
    },)
     );
  }
}

Widget _bulidPageItem(int index) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
        color: Colors.orange, borderRadius: BorderRadius.circular(20)),
  );
}
