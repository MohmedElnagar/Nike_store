import 'package:ecommerse/core/theme/const_color.dart';
import 'package:ecommerse/features/data/models/toral_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSelectItemH extends StatefulWidget {
  const CustomSelectItemH({
    super.key,
    required this.size,
  });

  final Size size;
  @override
  State<CustomSelectItemH> createState() => _CustomSelectItemState();
}

class _CustomSelectItemState extends State<CustomSelectItemH> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      height: widget.size.height * .05,
      child: ListView.builder(
          itemCount: categories.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      fontWeight: selectIndex == index
                          ? FontWeight.bold
                          : FontWeight.w400,
                      fontSize: selectIndex == index ? 22 : 18,
                      color: selectIndex == index
                          ? AppConstantsColor.darkTextColor
                          : AppConstantsColor.unSelectedTextColor),
                ),
              ),
            );
          }),
    );
  }
}
