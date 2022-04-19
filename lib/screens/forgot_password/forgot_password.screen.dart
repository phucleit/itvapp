import 'package:flutter/material.dart';

import './components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({ Key? key }) : super(key: key);

  static String routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quên mật khẩu',
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