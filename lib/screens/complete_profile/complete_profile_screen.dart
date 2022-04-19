import 'package:flutter/material.dart';

import './components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({ Key? key }) : super(key: key);

  static String routeName = '/complete_profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Đăng ký',
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