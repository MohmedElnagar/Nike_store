import 'package:ecommerse/core/theme/const_color.dart';
import 'package:ecommerse/features/data/models/toral_list.dart';
import 'package:ecommerse/features/views/widget/custom_stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSelectItemV extends StatefulWidget {
  const CustomSelectItemV({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<CustomSelectItemV> createState() => _CustomSelectItemState();
}

class _CustomSelectItemState extends State<CustomSelectItemV> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: widget.size.width / 10,
          height: widget.size.height / 3.7,
          child: RotatedBox(
            quarterTurns: -1,
            child: ListView.builder(
                itemCount: featured.length,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        featured[index],
                        style: TextStyle(
                            fontWeight: selectIndex == index
                                ? FontWeight.w600
                                : FontWeight.w400,
                            fontSize: selectIndex == index ? 20 : 18,
                            color: selectIndex == index
                                ? AppConstantsColor.darkTextColor
                                : AppConstantsColor.unSelectedTextColor),
                      ),
                    ),
                  );
                }),
          ),
        ),
        CustomStack(
          widget: widget,
        )
      ],
    );
  }
}
