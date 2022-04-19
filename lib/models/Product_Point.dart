import 'package:flutter/material.dart';

class ProductPoint {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  ProductPoint({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<ProductPoint> pointProducts = [
  ProductPoint(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Vip Wireless Controller for PS4™",
    price: 3,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  ProductPoint(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Vip Nike Sport White - Man Pant",
    price: 5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  ProductPoint(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "VipGloves XC Omega - Polygon",
    price: 2,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  ProductPoint(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Vip Logitech Head",
    price: 3,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Vip Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
