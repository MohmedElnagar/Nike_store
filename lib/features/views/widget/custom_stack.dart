import 'package:animate_do/animate_do.dart';
import 'package:ecommerse/core/router/app_router.dart';
import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:ecommerse/features/data/models/shoe_model.dart';
import 'package:ecommerse/features/data/models/toral_list.dart';
import 'package:ecommerse/features/views/widget/custom_select_itemv.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({
    super.key,
    required this.widget,
  });

  final CustomSelectItemV widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height * .35,
      width: widget.size.width * .90,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: shoemodel.length,
          itemBuilder: ((context, index) {
            ShoeModel model = shoemodel[index];
            return GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kDetailsView, extra: model);
              },
              child: Container(
                width: widget.size.width / 1.5,
                margin: EdgeInsets.symmetric(
                    horizontal: widget.size.width * 0.005,
                    vertical: widget.size.height * .01),
                child: Stack(
                  children: [
                    Container(
                      width: widget.size.width / 1.81,
                      decoration: BoxDecoration(
                          color: model.modelcolor,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Positioned(
                      left: 15,
                      top: 10,
                      child: Row(
                        children: [
                          Text(
                            model.name,
                            style: AppTheme.homeProductName,
                          ),
                          SizedBox(
                            width: widget.size.width * .3,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    Positioned(
                        top: 45,
                        left: 10,
                        child: FadeInUp(
                          duration: const Duration(milliseconds: 800),
                          delay: const Duration(milliseconds: 800),
                          child: Text(
                            model.model,
                            style: AppTheme.homeProductModel,
                          ),
                        )),
                    Positioned(
                        top: 80,
                        left: 10,
                        child: FadeInUp(
                          duration: const Duration(milliseconds: 600),
                          delay: const Duration(milliseconds: 600),
                          child: Text(
                            '\$${model.price.toStringAsFixed(2)}',
                            style: AppTheme.homeProductPrice,
                          ),
                        )),
                    Positioned(
                      right: 20,
                      top: 45,
                      child: RotationTransition(
                        turns: const AlwaysStoppedAnimation(-30 / 360),
                        child: FadeInUp(
                          duration: const Duration(milliseconds: 400),
                          delay: const Duration(milliseconds: 400),
                          child: Image.asset(
                            model.imageasdess,
                            height: 250,
                            width: 250,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 170,
                        bottom: 10,
                        child: IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.circleArrowRight,
                              color: Colors.white,
                              size: 30,
                            )))
                  ],
                ),
              ),
            );
          })),
    );
  }
}
