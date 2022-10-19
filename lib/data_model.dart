import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DataModel {
  late int id;
  late String name;
  late String type;
  late String image;
  late int price;
  late int size;
  late int numberItemInCart;
  late bool cartFlag;
  DataModel({
    required this.id,
    required this.name,
    required this.type,
    required this.image,
    required this.price,
    required this.size,
    required this.numberItemInCart,
    required this.cartFlag,
  });
}
