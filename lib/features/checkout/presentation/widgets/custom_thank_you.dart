import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

import 'custom_cotainer.dart';
import 'custom_row.dart';

class CutomThankYou extends StatelessWidget {
  const CutomThankYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child:   Padding(
        padding: EdgeInsets.only(top: 50 + 16),
        child: Column(
          children: [
            Text(
              'Thank You',
              style: Styles.styles22,
            ),
            Text(
              'there are here ds  !!!!',
              style: Styles.styles22,
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomRow(
                title: 'date',
                date: '25/11/2024',
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomRow(
                title: 'time',
                date: '5.5',
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomRow(
                title: 'To',
                date: 'Saudi Arabia',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: Styles.styles25,
                  ),
                  Text(
                    '20.5\$',
                    style: Styles.styles25,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomContainer(),
            Row(
              children: [
                Icon(Icons.backpack_rounded),
                Container(
                  height: 50,
                  width: 70,
                  decoration:const ShapeDecoration(
                    shape: RoundedRectangleBorder()
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
