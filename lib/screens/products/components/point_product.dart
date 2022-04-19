import 'package:flutter/material.dart';
import 'package:itv/components/point_product_card.dart';
import 'package:itv/models/Product_Point.dart';
import 'package:itv/screens/detail_point_product/detail_point_product_screen.dart';
import 'package:itv/screens/products/components/section_title.dart';

class PointrProduct extends StatelessWidget {
  const PointrProduct({
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
          text: 'Quà đổi thưởng',
          press: () {},
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                pointProducts.length,
                (index) => PointProductCard(
                  product: pointProducts[index],
                  press: () => Navigator.pushNamed(
                    context, 
                    DetailScreenPointProduct.routeName,
                    arguments: PointProductDetailsArguments(product: pointProducts[index]),
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}