import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

import '../../../screens/sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Chào mừng bạn đến với ITVUNGTAU",
      "image": 'assets/images/welcome_1.png'
    },
    {
      "text": "Yêu cầu dịch vụ nhanh",
      "image": 'assets/images/welcome_2.png'
    },
    {
      "text": "Mua sắm tiện lợi nhiều ưu đãi",
      "image": 'assets/images/welcome_3.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                // ignore: unnecessary_null_comparison
                itemCount: splashData == null ? 0 : splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'] ?? '',
                  text: splashData[index]['text'] ?? '',
                )
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 3),
                    DefaultButton(
                      text: 'Tiếp tục',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
      color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
      borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}


