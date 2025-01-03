import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class DetailsCartItem extends StatelessWidget {
  const DetailsCartItem({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.stylesBold18,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.stylesBold18,
        ),
      ],
    );
  }
}
