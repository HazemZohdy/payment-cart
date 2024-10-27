import 'package:flutter/material.dart';
 import 'package:payment_app/features/checkout/presentation/widgets/payment_method_list_view.dart';

class CartDetailsViewBody extends StatelessWidget {
  const CartDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentMethodListView(),
      ],
    );
  }
}
