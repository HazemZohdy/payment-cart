import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.title,
    required this.date,
  });
  final String title, date;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.styles22,
        ),
        Text(
          date,
          style: Styles.styles22,
        ),
      ],
    );
  }
}
