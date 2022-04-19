import 'package:flutter/material.dart';

import './components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({ Key? key }) : super(key: key);

  static String routeName = '/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text(
        //   'Đăng nhập thành công',
        //   style: TextStyle(
        //     color: Color(0xFF8D8D8D),
        //     fontSize: 22,
        //   ),
        //   textAlign: TextAlign.center,
        // ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Body(),
    );
  }
}