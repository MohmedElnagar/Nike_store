import 'package:animate_do/animate_do.dart';
import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:ecommerse/features/data/models/shoe_model.dart';
import 'package:ecommerse/features/views/widget/custom_app_bar_details_screen.dart';
import 'package:ecommerse/features/views/widget/custom_text.dart';
import 'package:ecommerse/features/views/widget/custom_text_and_select.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    super.key,
    required this.isCome,
    required this.model,
  });
  final bool isCome;
  final ShoeModel model;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const CustomHomeAppBar(),
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height * 1.1,
            width: size.width,
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 2.3,
                  width: size.width,
                  child: Stack(
                    children: [
                      FadeInUp(
                        delay: const Duration(milliseconds: 300),
                        duration: const Duration(milliseconds: 300),
                        child: Container(
                          height: size.height / 2.2,
                          width: 1000,
                          decoration: BoxDecoration(
                              color: model.modelcolor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(1500),
                                bottomRight: Radius.circular(100),
                              )),
                        ),
                      ),
                      Positioned(
                          top: 90,
                          left: 40,
                          child: RotationTransition(
                            turns: const AlwaysStoppedAnimation(-25 / 360),
                            child: FadeInUp(
                              delay: const Duration(milliseconds: 700),
                              duration: const Duration(milliseconds: 700),
                              child: SizedBox(
                                height: size.height / 4.3,
                                width: size.width / 1.3,
                                child: Image.asset(
                                  model.imageasdess,
                                  height: 100,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                FadeInUp(
                  duration: const Duration(milliseconds: 1000),
                  delay: const Duration(milliseconds: 1000),
                  child: SizedBox(
                      height: 100,
                      width: size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.3),
                                  borderRadius: BorderRadius.circular(12)),
                              width: 90,
                              child: Image.asset(
                                model.imageasdess,
                              ),
                            ),
                          );
                        },
                      )),
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 800),
                  duration: const Duration(milliseconds: 800),
                  child: const Divider(
                    thickness: 4,
                    height: 20,
                    color: Colors.grey,
                    endIndent: 30,
                    indent: 30,
                  ),
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 700),
                  duration: const Duration(milliseconds: 700),
                  child: CustomText2(
                    text: model.model,
                    text2: '\$${model.price.toStringAsFixed(2)}',
                  ),
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 600),
                  duration: const Duration(milliseconds: 600),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                        "tadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata",
                        style: AppTheme.detailsProductDescriptions),
                  ),
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "MORE DETAILS",
                        style: AppTheme.detailsMoreText,
                      ),
                    ),
                  ),
                ),
                FadeInUp(
                    delay: const Duration(milliseconds: 300),
                    duration: const Duration(milliseconds: 300),
                    child: CustomTextAndSelectSize(
                      model: model,
                    )),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
