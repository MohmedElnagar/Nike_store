import 'package:flutter/material.dart';

class CustomSnackBar {
  static succesSnackBar() => SnackBar(
      backgroundColor: Colors.green[400],
      action: SnackBarAction(
          textColor: Colors.white, label: 'Get it', onPressed: () {}),
      content: const Text('Successfuly Added to your bag!'));
  static failed() => SnackBar(
      backgroundColor: Colors.red[400],
      action: SnackBarAction(
          textColor: Colors.white, label: 'Get it', onPressed: () {}),
      content: const Text('you have added this item before!'));
}
