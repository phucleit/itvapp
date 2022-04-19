import 'package:flutter/material.dart';
import 'package:itv/components/custom_suffix_icon.dart';
import 'package:itv/constants.dart';
import 'package:itv/screens/complete_profile/components/complete_profile_form.dart';
import 'package:itv/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                'Hoàn thành hồ sơ',
                style: headingStyle,
              ),
              const Text(
                'Hoàn thành thông tin chi tiết của bạn\n để chúng tôi hỗ trợ bạn tốt hơn',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              const CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
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


