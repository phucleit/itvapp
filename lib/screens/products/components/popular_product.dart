import 'package:flutter/material.dart';
import 'package:itv/components/product_card.dart';
import 'package:itv/models/Product.dart';
import 'package:itv/screens/detail_product/detail_product_screen.dart';
import 'package:itv/screens/products/components/section_title.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
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
          text: 'Sản phẩm',
          press: () {},
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context, 
                    DetailScreenProduct.routeName,
                    arguments: ProductDetailsArguments(product: demoProducts[index]),
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