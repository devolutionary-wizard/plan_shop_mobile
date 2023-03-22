import 'package:flutter/material.dart';
import 'package:plan_shop/screens/authentication/register_screen.dart';
import 'package:plan_shop/utilities/mixins/device_checker.dart';
import 'package:plan_shop/utilities/page_navigation.dart';
import 'package:plan_shop/widgets/buttons/round_button.dart';
import 'package:plan_shop/widgets/text_input/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with DeviceChecker {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            closePage(context);
          },
        ),
        actions: [
          TextButton(
              onPressed: () {
                if (isIOS) {
                  openPageIOS(const RegisterScreen(), context);
                } else {
                  openPageAndroid(const RegisterScreen(), context);
                }
              },
              child: const Text(
                'Register',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24))),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.2,
                    ),
                    CustomTextFormField(
                      textEditingController: _usernameController,
                      hintText: 'Username',
                    ),
                    const SizedBox(height: 15,),
                    CustomTextFormField(
                      textEditingController: _passwordController,
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 25,),
                    RoundButton(width: double.infinity, height: 60, text: 'Sign In', backgroundColor: Colors.black, onPressed: (){

                    })
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
