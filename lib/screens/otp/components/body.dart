import 'package:flutter/material.dart';
import 'package:itv/constants.dart';
import 'package:itv/size_config.dart';

import './otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  final String phoneNumber = '123456***';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                'Xác minh OTP',
                style: headingStyle,
              ),
              Text(
                // ignore: unnecessary_brace_in_string_interps
                'Chúng tôi sẽ gửi mã code về \nsố điện thoại ${phoneNumber} của quý khách',
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Gửi lại mã OTP',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Mã code OTP sẽ hết hạn trong ',
        ),
        TweenAnimationBuilder(
          tween: IntTween(begin: 80, end: 0),
          duration: const Duration(seconds: 70),
          // ignore: unnecessary_brace_in_string_interps
          builder: (context, value, child) => Text(
            // ignore: unnecessary_brace_in_string_interps
            '${value}',
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
