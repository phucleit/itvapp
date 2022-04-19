import 'package:flutter/material.dart';

import './section_title.dart';
import './special_offer_card.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key? key,
  }) : super(key: key);

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

    return Column(
      children: [
        SectionTitle(
          text: 'Danh mục sản phẩm',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                category: 'Linh kiện máy tính',
                number: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                category: 'Máy in',
                number: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                category: 'Camera',
                number: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                category: 'Thiết bị văn phòng',
                number: 18,
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}