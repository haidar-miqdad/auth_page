import 'package:flutter/material.dart';

import '../widget/input_custom.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool isObscure = false;

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
              obscureText: true,
              title: 'Enter your password',
              hintText: '********',
              suffixIcon: IconButton(
                onPressed: () { },
                icon: const Icon(Icons.visibility, size: 20, color: Colors.grey,),
              ),
            ),
            InputCustom(
              obscureText: true,
              title: 'Re-enter your password',
              hintText: '********',
              suffixIcon: const Icon(
                Icons.visibility,
                size: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
