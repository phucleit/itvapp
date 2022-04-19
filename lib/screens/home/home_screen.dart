import 'package:flutter/material.dart';

import './components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trang chủ',
          style: TextStyle(
            color: Color(0xFF8D8D8D),
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: const Body(),
    );
  }
}