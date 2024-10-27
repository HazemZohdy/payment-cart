import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class TotalInfo extends StatelessWidget {
  const TotalInfo({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.styles25,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.styles25,
        ),
      ],
    );
  }
}
