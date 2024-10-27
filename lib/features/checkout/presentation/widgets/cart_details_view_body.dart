import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_method_list_view.dart';

class CartDetailsViewBody extends StatelessWidget {
  const CartDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PaymentMethodListView(),
          CustomCreditCard(),
        ],
      ),
    );
  }
}

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          isHolderNameVisible: true,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel) {
              cardHolderName = creditCardModel.cardHolderName;
              cardNumber = creditCardModel.cardNumber;
              expiryDate = creditCardModel.expiryDate;
              cvvCode = creditCardModel.cvvCode;
              showBackView = creditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: formKey),
      ],
    );
  }
}
