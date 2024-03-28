import 'package:ecommerse/core/utils/snak_bar.dart';
import 'package:ecommerse/features/data/models/shoe_model.dart';
import 'package:ecommerse/features/data/models/toral_list.dart';
import 'package:flutter/material.dart';

class AppMethod {
  static void addToCard(ShoeModel data, BuildContext context) {
    bool contains = itemOnBag.contains(data);
    if (contains) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();

      ScaffoldMessenger.of(context).showSnackBar(CustomSnackBar.failed());
    } else {
      itemOnBag.add(data);
      ScaffoldMessenger.of(context).hideCurrentSnackBar();

      ScaffoldMessenger.of(context)
          .showSnackBar(CustomSnackBar.succesSnackBar());
    }
  }

  static double allItemOnBag() {
    double subprece = 0;
    for (ShoeModel item in itemOnBag) {
      subprece = subprece + item.price;
    }
    return subprece;
  }
}
