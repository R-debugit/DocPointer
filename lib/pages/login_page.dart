import 'package:docpointer/pages/homepage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

import '../widgets/textfieldinput.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              // SvgPicture.asset(
              //   'assets/ic_instagram.svg',
              //   color: primaryColor,
              //   height: 64,
              // ),
              const SizedBox(
                height: 64,
              ),
              TextFieldInput(
                textEditingController: _emailController,
                hintText: 'Enter your mail',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextFieldInput(
                textEditingController: _passwordController,
                hintText: 'Enter your Password',
                textInputType: TextInputType.text,
                isPass: true,
              ),
              const SizedBox(
                height: 24.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    //color: Colors.blue,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text('Log in'),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text("Don't Have an Account? "),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
