
import 'package:flutter/material.dart';

import '../../color/colors.dart';

class Payment_Card extends StatelessWidget {
  const Payment_Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: ColorConstant.mainOrange),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('AMOUNT ON HOLD',style: TextStyle(fontSize: 14,color: ColorConstant.mainWhite),),
                Text('₹0',style: TextStyle(fontSize: 18,color: ColorConstant.mainWhite),),
              ],
            ),
          ),
          Container(
            height: 70,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: ColorConstant.mainGreen),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('AMOUNT RECIEVED',style: TextStyle(fontSize: 14,color: ColorConstant.mainWhite),),
                Text('₹13,332',style: TextStyle(fontSize: 18,color: ColorConstant.mainWhite),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}