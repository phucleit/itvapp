import 'package:flutter/material.dart';

import './components/body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({ Key? key }) : super(key: key);

  static String routeName = '/products';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}