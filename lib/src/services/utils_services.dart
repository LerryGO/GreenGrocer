import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UtilsServices {
  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt-BR');
    return numberFormat.format(price);
  }
}
