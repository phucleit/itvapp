import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:itv/nav_bar.dart';
import 'package:itv/screens/home/home_screen.dart';

import './theme.dart';
import './routes.dart';

import './screens/splash/splash_screen.dart';

void main() {
  //runApp(const MyApp());
  runApp(
    DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // initialRoute: SplashScreen.routeName,
      // initialRoute: HomeScreen.routeName,
      routes: routes,
      home: const NavBar(),
    );
  }
}

