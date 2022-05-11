import 'package:flutter/material.dart';
import 'package:theme_selection/components/custom_button.dart';
import 'package:theme_selection/components/input_filed.dart';
import 'package:theme_selection/screens/home/components/payment_type.dart';
import 'package:theme_selection/screens/home/components/statictics_card.dart';

class upgrade_plan extends StatefulWidget {
  const upgrade_plan({Key? key}) : super(key: key);

  @override
  _upgrade_planState createState() => _upgrade_planState();
}

class _upgrade_planState extends State<upgrade_plan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
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
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  "Upgrade Your Plan",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    "Please make the payment to start enjoying all\nthe features of our premium plan as soon as \n possible",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Card(
                color: Colors.deepPurple.shade100,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: card(
                          color_: Colors.deepPurple.shade200,
                          icon_: Icons.shopping_bag,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Platinum",
                                ),
                                Text(
                                  "Upgrade plan",
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: const [
                          Text(
                            "\$5,250",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "/Year",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 13),
              child: Text(
                "Payment Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const payment_type(
              img: 'assests/card/card_1.png',
              paymentType: 'Credit Card',
              card_no: '2566 xxxx xxxx 8909',
              txt: 'CVV',
            ),
            const payment_type(
              img: 'assests/card/card_2.jpg',
              paymentType: 'Credit Card',
              card_no: '2566 xxxx xxxx 8909',
              txt: 'CVV',
            ),
            const Text("Add Payment Method",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 13,
                )),
            const txt_field(
              hint_txt: 'Your Emial',
            ),
            Center(
              child: Column(
                children: const [
                  btn_(
                    btn_txt: 'PROCESS TO PAYMENT',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
