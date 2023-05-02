import 'package:flutter/material.dart';

import '../../consts/colors.dart';

class Default_method extends StatelessWidget {
  const Default_method({
    required this.tittle,
    required this.sub_tittle,
    super.key,
  });

  final String tittle;
  final String sub_tittle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: TextStyle(fontSize: 14, color: ColorConstant.mainBlack),
        ),
        Row(
          children: [
            Text(
              sub_tittle,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const Icon(
              Icons.arrow_forward_ios_sharp,
              size: 12,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}