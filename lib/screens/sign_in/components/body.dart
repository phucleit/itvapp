import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:itv/components/custom_suffix_icon.dart';
import 'package:itv/components/default_button.dart';
import 'package:itv/components/form.error.dart';
import 'package:itv/components/no_account_text.dart';
import 'package:itv/components/social_cart.dart';
import 'package:itv/constants.dart';
import 'package:itv/screens/forgot_password/forgot_password.screen.dart';
import 'package:itv/screens/sign_in/components/sign_form.dart';
import 'package:itv/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'IT VŨNG TÀU',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  'Kết nối với chúng tôi\nIT VŨNG TÀU sẽ giúp bạn giải quyết mọi vấn đề',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
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
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





