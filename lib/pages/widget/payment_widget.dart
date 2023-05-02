import 'package:flutter/cupertino.dart';
import '../../consts/colors.dart';


class Payment_widget extends StatelessWidget {

  const Payment_widget({
    required this.text1,
    required this.text2,
    required this.color,
    super.key,
  });

  final String text1;
  final String text2;
  final color;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(text1,style: TextStyle(fontSize: 14,color: ColorConstant.mainWhite),),
          Text(text2,style: TextStyle(fontSize: 18,color: ColorConstant.mainWhite),),
        ],
      ),
    );
  }
}
