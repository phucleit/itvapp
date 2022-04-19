import 'package:flutter/material.dart';

import './components/body.dart';

class SignupSuccessScreen extends StatelessWidget {
  const SignupSuccessScreen({ Key? key }) : super(key: key);

  static String routeName = '/signup_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Body(),
    );
  }
}