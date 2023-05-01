import 'package:flutter/material.dart';

import '../../consts/colors.dart';



class Chip_widget extends StatelessWidget {
  const Chip_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorConstant.mainWhite,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: 30,
          width: 100,
          child: Center(
            child: Text("On hold",
                style: TextStyle(color: Colors.grey)),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorConstant.mainBlue,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: 30,
          width: 100,
          child: Center(
            child: Text("Payouts(15)",
                style: TextStyle(color: Colors.white)),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorConstant.mainWhite,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: 30,
          width: 100,
          child: Center(
            child: Text("Refunds",
                style: TextStyle(color: Colors.grey)),
          ),
        ),
      ],
    );
  }
}