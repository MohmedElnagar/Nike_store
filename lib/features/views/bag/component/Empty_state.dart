import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("No Shoe Added!", style: AppTheme.bagEmptyListTitle),
        Text("Once you have added come back ",
            style: AppTheme.bagEmptyListSubTitle)
      ],
    );
  }
}
