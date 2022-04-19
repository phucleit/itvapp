import 'package:flutter/material.dart';

import './components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  static String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Đăng nhập',
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