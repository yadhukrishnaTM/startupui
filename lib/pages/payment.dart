import 'package:flutter/material.dart';
import 'package:startupui/pages/widget/Default_method.dart';
import 'package:startupui/pages/widget/Progress_bar.dart';
import 'package:startupui/pages/widget/payment_overview.dart';
import 'package:startupui/pages/widget/payment_profile.dart';
import 'package:startupui/pages/widget/payment_widget.dart';

import '../color/colors.dart';

class Payment extends StatelessWidget {
  const Payment ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.mainBlue,
        leading: Icon(Icons.arrow_back_ios),
        title: Center(
          child: Text(
            "Payment",
            style: TextStyle(fontSize: 16),
          ),
        ),
        actions: [
          Icon(Icons.info_outline),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Progress_bar(),

            Default_method(),
            Payment_profile(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Divider(thickness: 3, color: ColorConstant.mainWhite),
            ),
            Payment_overview(),
            Payment_Card()



          ],
        ),
      ),
    );
  }

  Text text1() {
    return Text(
      'Transactions',
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}