import 'package:flutter/material.dart';
import 'package:itv/components/default_button.dart';
import 'package:itv/screens/home/home_screen.dart';
import 'package:itv/size_config.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1200), () {
      Navigator.pushNamed(context, HomeScreen.routeName);
    });

    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          'Đăng nhập thành công',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        // SizedBox(
        //   width: SizeConfig.screenWidth * 0.6,
        //   child: DefaultButton(
        //     text: 'Đến trang chủ',
        //     press: () {
        //       Navigator.pushNamed(context, HomeScreen.routeName);
        //     },
        //   ),
        // ),
        // const Spacer(),
      ],
    );
  }
}