import 'package:ecommerse/features/data/models/shoe_model.dart';
import 'package:ecommerse/features/data/models/user_status.dart';
import 'package:flutter/widgets.dart';

List<ShoeModel> shoemodel = [
  ShoeModel(
    name: "NIKE",
    model: "AIR-MAX",
    price: 130.00,
    imageasdess: "assets/images/nike1.png",
    modelcolor: const Color(0xffDE0106),
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN MID",
    price: 190.00,
    imageasdess: "assets/images/nike8.png",
    modelcolor: const Color(0xff3F7943),
  ),
  ShoeModel(
    name: "NIKE",
    model: "ZOOM",
    price: 160.00,
    imageasdess: "assets/images/nike2.png",
    modelcolor: const Color(0xffE66863),
  ),
  ShoeModel(
    name: "NIKE",
    model: "Air-FORCE",
    price: 110.00,
    imageasdess: "assets/images/nike3.png",
    modelcolor: const Color(0xffD7D8DC),
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imageasdess: "assets/images/nike5.png",
    modelcolor: const Color(0xff37376B),
  ),
  ShoeModel(
    name: "NIKE",
    model: "ZOOM",
    price: 115.00,
    imageasdess: "assets/images/nike4.png",
    modelcolor: const Color(0xffE4E3E8),
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imageasdess: "assets/images/nike7.png",
    modelcolor: const Color(0xffD68043),
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imageasdess: "assets/images/nike6.png",
    modelcolor: const Color(0xffE2E3E5),
  ),
];
List<ShoeModel> itemOnBag = [];
List<UserStatus> userstatus = [
  UserStatus(
    emoji: '😴',
    text: "Away",
    selectColor: const Color(0xff121212),
    unSelectColor: const Color(0xffbfbfbf),
  ),
  UserStatus(
    emoji: '💻',
    text: "At Work",
    selectColor: const Color(0xff05a35c),
    unSelectColor: const Color(0xffCEEBD9),
  ),
  UserStatus(
    emoji: '🎮',
    text: "Gaming",
    selectColor: const Color(0xffFFD237),
    unSelectColor: const Color(0xffFDDFBB),
  ),
  UserStatus(
    emoji: '🤫',
    text: "Busy",
    selectColor: const Color(0xffba3a3a),
    unSelectColor: const Color(0xffdb9797),
  ),
];
final List categories = [
  'Nike',
  'Adidas',
  'Jordan',
  'Puma',
  'Gucci',
  'Tom Ford',
  'Koio',
];
final List featured = [
  'New',
  'Featured',
  'Upcoming',
];

final List<double> sizes = [6, 7.5, 8, 9.5];
