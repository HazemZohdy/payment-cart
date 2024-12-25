import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/widgets/cusotm_button.dart';
import 'package:payment_app/features/checkout/presentation/views/success_view.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_credt_card.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_method_list_view.dart';

class CartDetailsViewBody extends StatefulWidget {
  const CartDetailsViewBody({super.key});

  @override
  State<CartDetailsViewBody> createState() => _CartDetailsViewBodyState();
}

class _CartDetailsViewBodyState extends State<CartDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(right: 12, left: 12, bottom: 12),
              child: CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('Payment');
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const SuccessView();
                        },
                      ),
                    );
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'Payment',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
