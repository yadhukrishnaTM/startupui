import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:startupui/pages/widget/Default_method.dart';
import 'package:startupui/pages/widget/chip_widget.dart';
import 'package:startupui/pages/widget/payment_overview.dart';
import 'package:startupui/pages/widget/payment_widget.dart';
import 'package:startupui/pages/widget/transactions.dart';
import '../consts/colors.dart';
import '../provider/provider.dart';

class Payment extends StatelessWidget {
  Payment({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var progressProvider = Provider.of<ProgressProvider>(context);
    var value1 = context.watch<ProgressProvider>().progress;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.mainBlue,
          leading: const Icon(Icons.arrow_back_ios),
          title: const Center(
            child: Text(
              "Payments",
              style: TextStyle(fontSize: 16),
            ),
          ),
          actions: [
            const Icon(Icons.info_outline),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                        const Text(
                          'Transaction Limit',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                            "A free limit upto which you will recieve the online payments directly in your bank",
                            style: TextStyle(
                              fontSize: 12,
                            )),
                        const SizedBox(height: 10),
                        LinearProgressIndicator(
                            color: ColorConstant.mainBlue,
                            backgroundColor: ColorConstant.mainWhite,
                            value: context.read<ProgressProvider>().progress),
                        const SizedBox(height: 10),
                        Text(
                            ' ${context.read<ProgressProvider>().progress} left out of 50000',
                            style: const TextStyle(
                              fontSize: 12,
                            )
                            //style: TextStyle(color: ColorConstant.black),
                            ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorConstant.mainBlue),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    title: const Text("ENTER VALUE"),
                                    content: TextField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Value"),
                                      controller: _controller,
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            var v1 =
                                                double.parse(_controller.text);
                                            context
                                                .read<ProgressProvider>()
                                                .setProgress(v1);
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Add Limit")),
                                    ],
                                  );
                                });
                          },
                          child: const Text("Increase Limit",
                              style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: const [
                    Default_method(
                        tittle: "Default Method",
                        sub_tittle: "Online Payments"),
                    SizedBox(
                      height: 10,
                    ),
                    Default_method(
                        tittle: "Payment Profile", sub_tittle: "Bank Account"),
                  ],
                ),
                Divider(thickness: 3, color: ColorConstant.mainWhite),
                const Payment_overview(
                    tittle1: 'Payments Overview', sub_tittle1: 'Life Time'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Payment_widget(
                      text1: "AMOUNT ON HOLD",
                      text2: "₹0",
                      color: ColorConstant.mainOrange,
                    ),
                    Payment_widget(
                      text1: 'AMOUNT RECEIVED',
                      text2: '₹13,332',
                      color: ColorConstant.mainGreen,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Transactions',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Chip_widget(
                        tittle2: "On hold",
                        colr: Colors.grey,
                        colr1: ColorConstant.mainWhite),
                    Chip_widget(
                      tittle2: "Payouts(15)",
                      colr: Colors.white,
                      colr1: ColorConstant.mainBlue,
                    ),
                    Chip_widget(
                      tittle2: "Refunds",
                      colr: Colors.grey,
                      colr1: ColorConstant.mainWhite,
                    )
                  ],
                ),
                Transactions()
              ],
            ),
          ),
        ));
  }
}
