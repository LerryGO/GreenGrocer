// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:green_grocer/src/models/cart_item_model.dart';

class OrderModel {
  String id;
  DateTime createdDateTime;
  DateTime overdueDateTime;
  List<CartItemModel> items;
  String status;
  String copyAndPaste;
  double total;
  
  OrderModel({
    required this.id,
    required this.createdDateTime,
    required this.overdueDateTime,
    required this.items,
    required this.status,
    required this.copyAndPaste,
    required this.total,
  });
}
