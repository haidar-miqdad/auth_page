import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../icons/icons.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
     required this.title,
    required this.svg,
  });

  final String title;
  final Widget svg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svg,
            const SizedBox(width: 5),
            Text(title),
          ],
        ),
      ),
    );
  }
}
