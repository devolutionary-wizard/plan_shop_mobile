import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plan_shop/screens/authentication/welcome_screen.dart';
import 'package:plan_shop/utilities/mixins/device_checker.dart';
import 'package:plan_shop/utilities/page_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with DeviceChecker {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (isIOS) {
        openPageIOS(const WelcomeScreen(), context);
      } else {
        openPageAndroid(const WelcomeScreen(), context);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
      ),
    );
  }
}
