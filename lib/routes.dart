import 'package:flutter/widgets.dart';

import './screens/splash/splash_screen.dart';
import './screens/sign_in/sign_in_screen.dart';
import './screens/forgot_password/forgot_password.screen.dart';
import './screens/login_success/login_success_screen.dart';
import './screens/sign_up/sign_up_screen.dart';
import './screens/complete_profile/complete_profile_screen.dart';
import './screens/otp/otp_screen.dart';
import './screens/home/home_screen.dart';
import './screens/products/products_screen.dart';
import './screens/services/services_screen.dart';
import './screens/messages/message_screen.dart';
import './screens/signup_success/signup_success.dart';
import './screens/detail_product/detail_product_screen.dart';
import './screens/detail_point_product/detail_point_product_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  ServicesScreen.routeName: (context) => const ServicesScreen(),
  MessageScreen.routeName: (context) => const MessageScreen(),
  SignupSuccessScreen.routeName: (context) => const SignupSuccessScreen(),
  DetailScreenProduct.routeName: (context) => const DetailScreenProduct(),
  DetailScreenPointProduct.routeName: (context) => const DetailScreenPointProduct(),
};