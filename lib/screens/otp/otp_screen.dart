import 'package:flutter/material.dart';

import './components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({ Key? key }) : super(key: key);

  static String routeName = '/otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Xác minh OTP',
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