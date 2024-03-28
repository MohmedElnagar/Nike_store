import 'package:ecommerse/features/views/widget/custom_scroll_image.dart';
import 'package:ecommerse/features/views/widget/custom_select_itemh.dart';
import 'package:ecommerse/features/views/widget/custom_select_itemv.dart';
import 'package:ecommerse/features/views/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CustomSelectItemH(size: size),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomSelectItemV(size: size),
          const SizedBox(
            height: 20,
          ),
          const CustomText(),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: CustomScrollImage(),
          )
        ],
      ),
    );
  }
}
