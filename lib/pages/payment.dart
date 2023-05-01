import 'package:flutter/material.dart';
import 'package:startupui/pages/widget/Default_method.dart';
import 'package:startupui/pages/widget/Progress_bar.dart';
import 'package:startupui/pages/widget/chip_widget.dart';
import 'package:startupui/pages/widget/payment_overview.dart';
import 'package:startupui/pages/widget/payment_profile.dart';
import 'package:startupui/pages/widget/payment_widget.dart';
import 'package:startupui/pages/widget/transactions.dart';


import '../consts/colors.dart';



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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Progress_bar(),
              SizedBox(height: 10,),

              Default_method(),
              SizedBox(height: 10,),
              Payment_profile(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Divider(thickness: 3, color: ColorConstant.mainWhite),
              ),
              SizedBox(height: 10,),
              Payment_overview(),

              SizedBox(height: 10,),
              Payment_Card(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Transactions',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold,),
              ),
              Chip_widget(),
              SizedBox(height: 10,),
              Transactions(),


            ],
          ),
        ),
      ),
    );
  }


  }
