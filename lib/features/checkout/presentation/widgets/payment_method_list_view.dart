import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/details_method_item.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> paymentList = const [
    'assets/image/paypal.png',
    'assets/image/pay apple.png',
    'assets/image/card.png'
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: paymentList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  image: paymentList[index],
                  isActive: activeIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
