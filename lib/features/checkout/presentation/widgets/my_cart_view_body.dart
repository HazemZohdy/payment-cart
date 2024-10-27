import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/widgets/cusotm_button.dart';
import 'package:payment_app/features/checkout/presentation/views/cart_detailes_view.dart';
import 'package:payment_app/features/checkout/presentation/widgets/details_cart_item.dart';
import 'package:payment_app/features/checkout/presentation/widgets/total_info.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Image.asset(
              'assets/image/cart.png',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const DetailsCartItem(
            title: 'Order Subtotal',
            value: r'$42.20',
          ),
          const SizedBox(
            height: 3,
          ),
          const DetailsCartItem(
            title: 'Disconding',
            value: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const DetailsCartItem(
            title: 'Shipig',
            value: r'$8',
          ),
          const Divider(
            color: Colors.grey,
            height: 34,
            thickness: 2,
          ),
          const TotalInfo(
            title: r'Total',
            value: r'$50.95',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (cotext) {
                    return const CartDetailsView();
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
