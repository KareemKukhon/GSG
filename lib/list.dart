import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/data.dart';
import 'package:project1/data_model.dart';
import 'globels.dart' as globals;
import 'main.dart';

class DataWidget extends StatelessWidget {
  late DataModel _dataModel;
  int id;
  DataWidget(this._dataModel, this.id);
  @override
  Widget build(BuildContext context) {
    log("DataWidget = ${globals.id}");

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return ScreenUtilInit(
        designSize: const Size(262, 577),
        builder: (context, child) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyApp(id),
              ));
            },
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: screenWidth,
              height: screenHeight / 10,
              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(230, 219, 157, 1),
                    ),
                    child: Image.asset(
                      _dataModel.image,
                      width: 15.w,
                      height: 20.h,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                      Text(
                        _dataModel.name,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        _dataModel.type,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.currency_yen,
                    size: 15,
                  ),
                  Text(
                    _dataModel.price.toString(),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          );
        });
  }
}
