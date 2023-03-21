import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plan_shop/screens/authentication/login_screen.dart';
import 'package:plan_shop/screens/authentication/register_screen.dart';
import 'package:plan_shop/utilities/mixins/device_checker.dart';
import 'package:plan_shop/utilities/page_navigation.dart';
import 'package:plan_shop/widgets/buttons/round_button.dart';

class WelcomeScreen extends StatelessWidget with DeviceChecker {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
      child: Column(
        children: [
          Center(
            child: Lottie.network(
                'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(child: SizedBox()),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: MediaQuery.of(context).size.width * 0.1),
            decoration: const BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                        width: MediaQuery.of(context).size.width * 0.35,
                        backgroundColor: Colors.black,
                        height: 40,
                        text: 'Sign In',
                        onPressed: () {
                          if (isIOS) {
                            openPageIOS(const RegisterScreen(), context);
                          } else {
                            openPageAndroid(const RegisterScreen(), context);
                          }
                        }),
                    RoundButton(
                        width: MediaQuery.of(context).size.width * 0.35,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        height: 40,
                        text: 'Sign Up',
                        onPressed: () {
                          if (isIOS) {
                            openPageIOS(LoginScreen(), context);
                          } else {
                            openPageAndroid(LoginScreen(), context);
                          }
                        }),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
