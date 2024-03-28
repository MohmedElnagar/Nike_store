import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:ecommerse/core/theme/const_color.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: const Text('Nike', style: AppTheme.detailsAppBar),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: AppConstantsColor.lightTextColor,
            )),
      ],
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back,
              color: AppConstantsColor.lightTextColor)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
