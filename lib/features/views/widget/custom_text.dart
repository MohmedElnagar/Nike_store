import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'More',
            style: AppTheme.homeMoreText,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.arrow_right,
                size: 27,
              ))
        ],
      ),
    );
  }
}

class CustomText2 extends StatelessWidget {
  const CustomText2({super.key, required this.text, required this.text2});
  final String text, text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTheme.homeMoreText,
          ),
          Text(
            text2,
            style: AppTheme.detailsProductPrice,
          ),
        ],
      ),
    );
  }
}
