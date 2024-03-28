import 'package:animate_do/animate_do.dart';
import 'package:ecommerse/core/router/app_router.dart';
import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:ecommerse/core/theme/const_color.dart';
import 'package:ecommerse/features/data/models/shoe_model.dart';
import 'package:ecommerse/features/data/models/toral_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomScrollImage extends StatelessWidget {
  const CustomScrollImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .30,
      width: size.width,
      child: ListView.builder(
          itemCount: shoemodel.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            ShoeModel model = shoemodel[index];
            return InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kDetailsView, extra: model);
              },
              child: Container(
                width: size.width * .5,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppConstantsColor.backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    FadeInUp(
                      duration: const Duration(milliseconds: 300),
                      delay: const Duration(milliseconds: 300),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(15)),
                        ),
                        width: size.width / 13,
                        height: size.height / 10,
                        child: const RotatedBox(
                          quarterTurns: -1,
                          child: Center(
                            child: Text(
                              'NEW',
                              style: AppTheme.homeGridNewText,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        right: 10,
                        child: FadeInUp(
                          duration: const Duration(milliseconds: 500),
                          delay: const Duration(milliseconds: 500),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: AppConstantsColor.darkTextColor,
                              )),
                        )),
                    Positioned(
                        top: 70,
                        left: 40,
                        child: RotationTransition(
                          turns: const AlwaysStoppedAnimation(-20 / 360),
                          child: FadeInUp(
                            duration: const Duration(milliseconds: 800),
                            delay: const Duration(milliseconds: 800),
                            child: Image.asset(
                              model.imageasdess,
                              width: size.width * .40,
                            ),
                          ),
                        )),
                    Positioned(
                      bottom: 30,
                      left: 45,
                      child: SizedBox(
                        height: size.height / 20,
                        width: size.width / 2,
                        child: Text('${model.name}${model.model}',
                            style: AppTheme.homeGridNameAndModel
                                .copyWith(fontSize: 18)),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 70,
                      child: SizedBox(
                        height: size.height / 43,
                        width: size.width / 4,
                        child: Text("\$${model.price.toStringAsFixed(2)}",
                            style: AppTheme.homeGridNameAndModel
                                .copyWith(fontSize: 18)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
