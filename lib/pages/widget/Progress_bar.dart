import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../color/colors.dart';


class Progress_bar extends StatelessWidget {
  const Progress_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        //height: 170,
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: ColorConstant.mainWhite,
            ),
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transaction Limit',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                  "A free limit upto which you will recieve the online payments directly in your bank",
                  style: TextStyle(
                    fontSize: 12,
                  )),
              SizedBox(height: 10),
              LinearProgressBar(
                maxSteps: 6,
                progressType: LinearProgressBar.progressTypeLinear,
                // Use Linear progress
                currentStep: 2,
                progressColor: ColorConstant.mainBlue,
                backgroundColor: ColorConstant.mainWhite,
              ),
              SizedBox(height: 10),
              Text('36668 left out of ₹50000',
                  style: TextStyle(
                    fontSize: 12,
                  )
                //style: TextStyle(color: ColorConstant.black),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant.mainBlue),
                onPressed: () {},
                child: Text("Increase Limit",
                    style: TextStyle(fontSize: 14)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}