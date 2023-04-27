import 'package:flutter/material.dart';

class Payment_overview extends StatelessWidget {
  const Payment_overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Payment Overview', style: TextStyle(fontSize: 14)),
            Row(
              children: [
                Text('Life Time',
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.grey,
                  size: 20,
                )
              ],
            ),
          ]
      ),
    );
  }
}
