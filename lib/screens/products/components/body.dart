import 'package:flutter/material.dart';

import './discount_banner.dart';
import './home_header.dart';
import './categories.dart';
import './special_offer.dart';
import './popular_product.dart';
import './point_product.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

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
    
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(screenWidth: screenWidth),
            SizedBox(height: getProportionateScreenWidth(20)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const Categories(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const SpecialOffer(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const PopularProduct(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const PointrProduct(),
            SizedBox(height: getProportionateScreenWidth(40)),
          ],
        ),
      ),
    );
  }
}









