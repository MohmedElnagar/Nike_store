import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:ecommerse/core/theme/const_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              size: 25,
              color: AppConstantsColor.darkTextColor,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bell,
              size: 25,
              color: AppConstantsColor.darkTextColor,
            )),
      ],
      title: const Padding(
        padding: EdgeInsets.only(top: 6),
        child: Text(
          'Discover',
          style: AppTheme.homeAppBar,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
