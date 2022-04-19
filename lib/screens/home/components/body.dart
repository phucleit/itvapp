import 'package:flutter/material.dart';
import 'package:itv/size_config.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Trang chủ')
    );
  }
}