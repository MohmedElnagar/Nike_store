import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomAppBarBag extends StatelessWidget {
  const CustomAppBarBag({
    super.key,
    required this.height,
    required this.itemonbag,
  });

  final double height;
  final int itemonbag;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'My Bag',
            style: AppTheme.bagTitle,
          ),
          Text(
            'Total $itemonbag items',
            style: AppTheme.bagSumOfItemOnBag,
          )
        ],
      ),
    );
  }
}
