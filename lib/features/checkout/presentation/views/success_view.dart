import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/success_view_body.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SuccessViewBody(),
    );
  }
}