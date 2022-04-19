import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:itv/components/rounded_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ 
    Key? key,
    required this.rating
  }) : super(key: key);

  final double rating;

  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    final _mediaQueryData = MediaQuery.of(context);
    // ignore: unused_local_variable
    final screenWidth = _mediaQueryData.size.width;
    // ignore: unused_local_variable
    final screenHeight = _mediaQueryData.size.height;

    // ignore: unused_element
    double getProportionateScreenHeight(double inputHeight) {
      double _screenHeight = screenHeight;
      return (inputHeight / 812.0) * _screenHeight;
    }

    // ignore: unused_element
    double getProportionateScreenWidth(double inputWidth) {
      double _screenWidth = screenWidth;
      return (inputWidth / 375.0) * _screenWidth;
    }

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: RoundedIconButton(
                iconData: Icons.arrow_back_ios, 
                press: () => Navigator.pop(context),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    '$rating',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset('assets/icons/Star Icon.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}