import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:ecommerse/core/theme/const_color.dart';
import 'package:ecommerse/features/views/bag/bage_view.dart';
import 'package:ecommerse/features/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  final List<Widget> _screen = [
    const HomeView(),
    const BagView(),
    const Scaffold(
      backgroundColor: Colors.yellow,
    ),
  ];
  PageController controller = PageController();
  int currentIndex = 0;
  void onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
    controller.animateToPage(currentIndex,
        duration: const Duration(microseconds: 400), curve: Curves.linear);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: _screen,
      ),
      bottomNavigationBar: CustomNavigationBar(
          opacity: .5,
          scaleCurve: Curves.decelerate,
          elevation: 0,
          iconSize: 27,
          bubbleCurve: Curves.linear,
          selectedColor: const Color.fromARGB(255, 210, 42, 87),
          strokeColor: AppConstantsColor.materialButtonColor,
          unSelectedColor: const Color(0xffacaacac),
          backgroundColor: Colors.white,
          scaleFactor: .5,
          onTap: onItemTap,
          currentIndex: currentIndex,
          items: [
            CustomNavigationBarItem(icon: const Icon(CupertinoIcons.home)),
            CustomNavigationBarItem(
                icon: const Icon(CupertinoIcons.shopping_cart)),
            CustomNavigationBarItem(icon: const Icon(CupertinoIcons.person)),
          ]),
    );
  }
}
