import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputCustom extends StatelessWidget {

  final String title;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  bool? obscureText;
  List<TextInputFormatter>? inputFormatters;

  InputCustom({super.key,
    required this.title,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(
              fontSize: 16.00,
              fontWeight: FontWeight.normal
          ),),
          const SizedBox(height: 9,),
          TextField(
            inputFormatters: inputFormatters,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(color: Colors.black),
              ),
              prefixIcon: prefixIcon,
              hintText: hintText,
              suffixIcon: suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
