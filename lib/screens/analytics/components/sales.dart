import 'package:flutter/material.dart';
import 'package:theme_selection/components/custom_sales.dart';

class sales extends StatefulWidget {
  const sales({Key? key}) : super(key: key);

  @override
  _salesState createState() => _salesState();
}

class _salesState extends State<sales> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 1.7,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Text(
                  "Deposit",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          const custom_sales(
            leadtxt: 'US',
            icon: Icons.keyboard_arrow_up_outlined,
            color: Colors.green,
            title: '\$8, 656k',
            txt: 'United States of America',
            txt_: 'Sales',
            num: '894k',
            txtcolor: Colors.lightGreenAccent,
            number: '25.8%',
          ),
          const custom_sales(
            leadtxt: 'UK',
            icon: Icons.keyboard_arrow_down_outlined,
            color: Colors.red,
            title: '\$8, 656k',
            txt: 'United Kingdom',
            txt_: 'Sales',
            num: '84k',
            txtcolor: Colors.red,
            number: '25.8%',
          ),
          const custom_sales(
            leadtxt: 'IN',
            icon: Icons.keyboard_arrow_up_outlined,
            color: Colors.green,
            title: '\$8, 656k',
            txt: 'India',
            txt_: 'Sales',
            num: '148k',
            txtcolor: Colors.yellow,
            number: '5.8%',
          ),
          const custom_sales(
            leadtxt: 'JA',
            icon: Icons.keyboard_arrow_down_outlined,
            color: Colors.red,
            title: '\$8,656k',
            txt: 'Japan',
            txt_: 'Sales',
            num: '86k',
            txtcolor: Colors.grey,
            number: '25.8%',
          ),
          const custom_sales(
            leadtxt: 'KO',
            icon: Icons.keyboard_arrow_up_outlined,
            color: Colors.green,
            title: '\$8,656k',
            txt: 'Korea',
            txt_: 'Sales',
            num: '42k',
            txtcolor: Colors.lightGreenAccent,
            number: '16.8%',
          ),

        ]));
  }
}
