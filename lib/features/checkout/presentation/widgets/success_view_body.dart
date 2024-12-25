import 'package:flutter/material.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'lol',
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
        )
      ],
    );
  }
}
