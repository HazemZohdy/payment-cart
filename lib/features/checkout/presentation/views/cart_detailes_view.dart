import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/build_app_bar.dart';
import 'package:payment_app/features/checkout/presentation/widgets/cart_details_view_body.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const CartDetailsViewBody(),
    );
  }
}
