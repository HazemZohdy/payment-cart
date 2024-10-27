import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

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
 