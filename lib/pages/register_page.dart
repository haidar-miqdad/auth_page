import 'package:authtentication_flutter/widget/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../icons/icons.dart';
import '../widget/buttun_ouliined_custom.dart';
import '../widget/input_custom.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isObscure = false;

  bool isObscure2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, right: 38, left: 38),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputCustom(
                title: 'Enter your phone number',
                hintText: '86975969086',
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('+62'),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  ),
                ),
                suffixIcon: const Icon(
                  Icons.check_circle,
                  size: 20,
                ),
              ),
              InputCustom(
                title: 'Enter your email',
                hintText: 'abc@gmail.com',
              ),
              InputCustom(
                obscureText: isObscure,
                title: 'Enter your password',
                hintText: '********',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              InputCustom(
                obscureText: isObscure2,
                title: 'Re-enter your password',
                hintText: '********',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure2 = !isObscure2;
                    });
                  },
                  icon: Icon(
                    isObscure2 ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonCustom(title: 'Sign Up', onPressed: () {}),
              const SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign In'),
                  )
                ],
              ),
              const Align(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text('or'),
                ),
              ),
              CustomOutlinedButton(
                title: 'Continue with Google',
                svg: SvgPicture.string(google)
              ),
              CustomOutlinedButton(
                  title: 'Continue with Google',
                  svg: SvgPicture.string(apple)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

