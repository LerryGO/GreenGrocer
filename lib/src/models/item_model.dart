import 'package:flutter/material.dart';

class ItemModel {
  String? itemName;
  String? imgUrl;
  String? unit;
  double price;
  String description;

  ItemModel({
    required this.description,
    required this.imgUrl,
    required this.unit,
    required this.price,
    required this.itemName,
  });
}
