import 'package:authtentication_flutter/icons/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verify',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 66.0, right: 38, left: 38),
        child: Center(
          child: Column(
            children: [
              SvgPicture.string(verifyImage),
              const SizedBox(
                height: 106.0,
              ),
              const Text(
                'Enter OTP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'An 4 digit OTP has been sent to',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff696969),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                '458-465-6466',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 SizedBox(
                   width: 66,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(color: Color(0xffD1D1D1), width: 1),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(color: Color(0xff000000), width: 1),
                       ),
                       counterText: '',
                     ),
                     maxLength: 1,
                     textAlign: TextAlign.center,
                     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                     style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 24,
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 66,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(color: Color(0xffD1D1D1), width: 1),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(color: Color(0xff000000), width: 1),
                       ),
                       counterText: '',
                     ),
                     maxLength: 1,
                     textAlign: TextAlign.center,
                     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                     style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 24,
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 66,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(color: Color(0xffD1D1D1), width: 1),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(color: Color(0xff000000), width: 1),
                       ),
                       counterText: '',
                     ),
                     maxLength: 1,
                     textAlign: TextAlign.center,
                     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                     style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 24,
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 66,
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(color: Color(0xffD1D1D1), width: 1),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(color: Color(0xff000000), width: 1),
                       ),
                       counterText: '',
                     ),
                     maxLength: 1,
                     textAlign: TextAlign.center,
                     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                     style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 24,
                     ),
                   ),
                 ),
               ],
             ),
              const SizedBox(height: 23,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17),),
                      padding: const EdgeInsets.symmetric(vertical: 15,),
                    ),
                    child: const Text('Verify', ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
