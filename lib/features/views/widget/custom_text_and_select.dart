import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:ecommerse/core/utils/app_metod.dart';
import 'package:ecommerse/features/data/models/shoe_model.dart';
import 'package:ecommerse/features/data/models/toral_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextAndSelectSize extends StatefulWidget {
  const CustomTextAndSelectSize({super.key, required this.model});
  final ShoeModel model;

  @override
  State<CustomTextAndSelectSize> createState() =>
      _CustomTextAndSelectSizeState(model: model);
}

class _CustomTextAndSelectSizeState extends State<CustomTextAndSelectSize> {
  bool isSelect = false;
  int? isSizeSelect;
  final ShoeModel model;

  _CustomTextAndSelectSizeState({required this.model});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Size",
                style: AppTheme.homeMoreText,
              ),
              const Spacer(
                flex: 1,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.grey.withOpacity(.1))),
                  onPressed: () {
                    setState(() {
                      isSelect = false;
                    });
                  },
                  child: Text(
                    "UK",
                    style: TextStyle(
                        fontSize: isSelect ? 18 : 20,
                        color: isSelect ? Colors.grey : Colors.black,
                        fontWeight:
                            isSelect ? FontWeight.w200 : FontWeight.bold),
                  )),
              const SizedBox(
                width: 12,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.grey.withOpacity(.1))),
                  onPressed: () {
                    setState(() {
                      isSelect = true;
                    });
                  },
                  child: Text(
                    "USA",
                    style: TextStyle(
                        fontSize: !isSelect ? 18 : 20,
                        color: !isSelect ? Colors.grey : Colors.black,
                        fontWeight:
                            !isSelect ? FontWeight.w200 : FontWeight.bold),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: size.height * .07,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1)),
                  height: size.height * .1,
                  width: size.width / 4.5,
                  child: const Center(
                    child: Row(
                      children: [
                        Text(
                          "Tey it",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        RotatedBox(
                            quarterTurns: -1,
                            child: FaIcon(FontAwesomeIcons.shoePrints))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * .7,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              isSizeSelect = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: isSizeSelect == index
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              height: size.height * .1,
                              width: size.width / 6,
                              child: Center(
                                  child: Text(
                                sizes[index].toString(),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isSizeSelect == index
                                        ? Colors.white
                                        : Colors.black),
                              )),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(model.modelcolor),
                  fixedSize: MaterialStatePropertyAll(Size(size.width, 50))),
              onPressed: () {
                AppMethod.addToCard(widget.model, context);
              },
              child: const Text(
                "Add To Bag",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
