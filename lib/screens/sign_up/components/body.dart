import 'package:flutter/material.dart';
import 'package:itv/components/custom_suffix_icon.dart';
import 'package:itv/components/default_button.dart';
import 'package:itv/components/form.error.dart';
import 'package:itv/components/social_cart.dart';
import 'package:itv/screens/sign_up/components/signup_form.dart';
import 'package:itv/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                'Đăng ký tài khoản',
                style: headingStyle,
              ),
              const Text(
                'Hoàn thành thông tin chi tiết \nhoặc đăng ký bằng mạng xã hội',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              const Text(
                'Bằng cách tiếp tục xác nhận rằng bạn đồng \ný với điều khoản và điều kiện của chúng tôi',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
