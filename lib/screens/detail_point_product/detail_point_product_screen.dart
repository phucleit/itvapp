import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:itv/components/rounded_icon_button.dart';
import 'package:itv/models/Product_Point.dart';
import 'package:itv/size_config.dart';

import './components/custom_app_bar.dart';
import './components/body.dart';

class DetailScreenPointProduct extends StatelessWidget {
  const DetailScreenPointProduct({ Key? key }) : super(key: key);

  static String routeName = '/detailPointProduct';

  @override
  Widget build(BuildContext context) {
    final PointProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as PointProductDetailsArguments;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating),
      ),
      body: Body(product: agrs.product),
    );
  }
}

class PointProductDetailsArguments {
  final ProductPoint product;
  PointProductDetailsArguments({required this.product});
}