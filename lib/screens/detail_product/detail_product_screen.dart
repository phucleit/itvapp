import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:itv/components/rounded_icon_button.dart';
import 'package:itv/models/Product.dart';
import 'package:itv/size_config.dart';

import './components/custom_app_bar.dart';
import './components/body.dart';

class DetailScreenProduct extends StatelessWidget {
  const DetailScreenProduct({ Key? key }) : super(key: key);

  static String routeName = '/detailProduct';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

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

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}