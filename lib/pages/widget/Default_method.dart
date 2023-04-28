import 'package:flutter/material.dart';

class Default_method extends StatelessWidget {
  const Default_method({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Default Method', style: TextStyle(fontSize: 14)),
          Row(
            children: [
              Text('Online Payment',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
                size: 12,
              )
            ],
          ),
        ]
    );
  }
}
