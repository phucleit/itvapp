import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:itv/components/default_button.dart';
import 'package:itv/constants.dart';
import 'package:itv/models/Product.dart';
import 'package:itv/size_config.dart';

import './product_images.dart';
import './top_rounded_container.dart';
import './product_description.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

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

    // ignore: unused_element
    double getProportionateScreenWidth(double inputWidth) {
      double _screenWidth = screenWidth;
      return (inputWidth / 375.0) * _screenWidth;
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            child: ProductDescription(
              product: product,
              pressOnSeeMore: () {},
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}


