import 'package:flutter/material.dart';
import 'package:itv/models/Product_Point.dart';

import '../../../constants.dart';

class PointProductImages extends StatefulWidget {
  const PointProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductPoint product;

  @override
  State<PointProductImages> createState() => _PointProductImagesState();
}

class _PointProductImagesState extends State<PointProductImages> {
  int selectedImage = 0;

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

    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => builderPreview(index, getProportionateScreenHeight, getProportionateScreenWidth),
            ),
          ],
        ),
      ],
    );
  }

  // ignore: use_function_type_syntax_for_parameters
  GestureDetector builderPreview(int index, double getProportionateScreenHeight(double inputHeight), double getProportionateScreenWidth(double inputWidth)) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenHeight(8)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: selectedImage == index ? kPrimaryColor : Colors.transparent),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
