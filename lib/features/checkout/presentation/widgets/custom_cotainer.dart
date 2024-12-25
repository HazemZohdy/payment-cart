import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      width: 300,
      height: 90,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/image/card.png',
            height: 15,
          ),
          const SizedBox(
            width: 15,
          ),
          const Text.rich(TextSpan(children: [
            TextSpan(
              text: 'Credit Card\n',
              style: TextStyle(
                fontSize: 18,
                height: 0,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: 'MasterCard **85',
              style: TextStyle(
                fontSize: 16,
                height: 0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ])),
        ],
      ),
    );
  }
}
