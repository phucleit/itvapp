import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key, 
    required this.svgSrc, 
    this.numOfItems, 
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int? numOfItems;
  final Function press;

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

    return InkWell(
      onTap: press(),
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        // ignore: deprecated_member_use
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              right: 0,
              top: -3,
              child: Container(
                height: getProportionateScreenWidth(16),
                width: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}