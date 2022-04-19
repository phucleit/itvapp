import 'package:flutter/material.dart';
import 'package:itv/constants.dart';

import './icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    final _mediaQueryData = MediaQuery.of(context);
    // ignore: unused_local_variable
    final screenWidth = _mediaQueryData.size.width;
    // ignore: unused_local_variable
    final screenHeight = _mediaQueryData.size.height;

    // ignore: unused_element
    double getProportionateScreenHeight(double inputHeight) {
      double _screenHeight = screenHeight;
      return (inputHeight / 812.0) * _screenHeight;
    }

    double getProportionateScreenWidth(double inputWidth) {
      double _screenWidth = screenWidth;
      return (inputWidth / 375.0) * _screenWidth;
    }
    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: screenWidth * 0.6,
            height: 50,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Tìm sản phẩm',
                prefixIcon: const Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenWidth(9),
                ),
              ),
            ),
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            numOfItems: 0,
            press: () {},
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
