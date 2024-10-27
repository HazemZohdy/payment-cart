import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/presentation/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body:const MyCartViewBody(),
    );
  }

  AppBar buildAppBar({required final String title}) {
    return AppBar(
      leading: const Icon(
        Icons.arrow_back,
        size: 40,
      ),
      centerTitle: true,
      title: Text(
        title,
        style: Styles.styles25,
      ),
    );
  }
}
