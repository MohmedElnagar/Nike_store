import 'package:ecommerse/core/theme/app_theme.dart';
import 'package:ecommerse/core/theme/const_color.dart';
import 'package:ecommerse/core/utils/app_metod.dart';
import 'package:ecommerse/features/data/models/shoe_model.dart';
import 'package:ecommerse/features/data/models/toral_list.dart';
import 'package:ecommerse/features/views/bag/component/Empty_state.dart';
import 'package:ecommerse/features/views/widget/custom_app_bar_bag.dart';
import 'package:flutter/material.dart';

class BagView extends StatefulWidget {
  const BagView({super.key});

  @override
  State<BagView> createState() => _BagViewState();
}

class _BagViewState extends State<BagView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    int itemonbag = itemOnBag.length;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBarBag(height: height, itemonbag: itemonbag),
                const Divider(
                  thickness: 1,
                ),
                itemOnBag.isEmpty
                    ? const EmptyState()
                    : Column(
                        children: [
                          SizedBox(
                            height: height * .65,
                            child: ListView.builder(
                                itemCount: itemOnBag.length,
                                scrollDirection: Axis.vertical,
                                itemBuilder: ((context, index) {
                                  ShoeModel shoeModel = itemOnBag[index];
                                  return Row(children: [
                                    CustomItem(shoeModel: shoeModel),
                                    Column(
                                      children: [
                                        CustomVItem(
                                          model: shoeModel,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                IconButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.grey
                                                                    .withOpacity(
                                                                        .2))),
                                                    onPressed: () {},
                                                    icon:
                                                        const Icon(Icons.add)),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text('$itemonbag'),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                IconButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.grey
                                                                    .withOpacity(
                                                                        .2))),
                                                    onPressed: () {
                                                      setState(() {
                                                        itemOnBag
                                                            .remove(shoeModel);
                                                        itemonbag =
                                                            itemOnBag.length;
                                                      });
                                                    },
                                                    icon: const Icon(
                                                        Icons.remove)),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ]);
                                })),
                          ),
                          SizedBox(
                            height: height / 7,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'TOTAL',
                                      style: AppTheme.bagTotal,
                                    ),
                                    Text(
                                      '\$${AppMethod.allItemOnBag()}',
                                      style: AppTheme.bagProductPrice,
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                AppConstantsColor
                                                    .materialButtonColor),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(width, 50))),
                                    onPressed: () {
                                      // AppMethod.addToCard(_widget, context);
                                    },
                                    child: const Text(
                                      "Add To Bag",
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.shoeModel,
  });

  final ShoeModel shoeModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          height: 150,
          width: 125,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.withOpacity(.2)),
        ),
        Positioned(
            top: 10,
            left: 5,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(-40 / 360),
              child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(shoeModel.imageasdess)),
            )),
      ],
    );
  }
}

class CustomVItem extends StatelessWidget {
  const CustomVItem({
    super.key,
    required this.model,
  });
  final ShoeModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.model,
            style: AppTheme.bagProductModel,
          ),
          Text(
            '\$${model.price.toStringAsFixed(2)}',
            style: AppTheme.bagProductPrice,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
