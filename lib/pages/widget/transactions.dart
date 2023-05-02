import 'package:flutter/material.dart';

import '../../consts/colors.dart';


class Transactions extends StatelessWidget {
  //Transactions({Key? key}) : super(key: key);
  List<String>images = [
    "https://images.pexels.com/photos/2850487/pexels-photo-2850487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/2060241/pexels-photo-2060241.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/6770820/pexels-photo-6770820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];
  List<String> title = [
    "Order #1688068",
    "Order #1457741",
    "Order #1408896",
    "Order #1369633",
    "Order #1258697"];

  List<String> rate = [
    "₹799",
    "₹397.4",
    "₹686.42",
    "₹1123.5",
    "₹369.56"
  ];

  List<String> date = [
    "Jul 12, 02:06 PM",
    "Apr 26, 07:47 AM",
    "Apr 11, 10:54 AM",
    "Apr 02, 11:29 AM",
    "Mar 29, 08:12 AM"
  ];

  List<String> price2 = [
    "₹799  deposited to 58860200000138",
    "₹397.4 deposited to 58860200000138",
    "₹686.42 deposited to 58860200000138",
    "₹1123.5 deposited to 58860200000138",
    "₹369.56 deposited to 58860200000138"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics:  NeverScrollableScrollPhysics(),
      itemCount: title.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( title[index], style: TextStyle(color: ColorConstant.mainWhite)),

                    Text(rate[index], style: TextStyle(color: ColorConstant.mainBlue)),
                  ],
                ),
                subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(date[index]),
                    Row(
                      children: [
                        CircleAvatar(radius: 5,backgroundColor: ColorConstant.mainGreen,),
                        SizedBox(width: 10,),
                        Text("Successful")
                      ],
                    ),
                  ],
                ),
                leading: Image.network(images[index],height: 50,width: 50,fit: BoxFit.cover,),
              ),
              Text(price2[index],style: TextStyle(fontSize: 10, color: ColorConstant.mainBlack),)
            ],
          ),

        );
      },
    );
  }
}