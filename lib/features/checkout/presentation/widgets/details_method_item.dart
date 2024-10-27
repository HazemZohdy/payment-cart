import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    this.isActive = false,
    required this.image,
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 255),
      height: 62,
      width: 103,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: isActive ? Colors.green : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(15)),
        shadows: [
          BoxShadow(
            color: isActive ? Colors.green : Colors.white,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Image.asset(
            image,
            height: 40,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
