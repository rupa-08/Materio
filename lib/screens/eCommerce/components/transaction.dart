import 'package:flutter/material.dart';
import 'package:theme_selection/screens/eCommerce/components/custom_trancetion.dart';

class transaction extends StatelessWidget {

  const transaction(
      {Key? key,
       })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
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
                Text("Transaction", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                )
              ],
            ),
            const transection(
                icon: Icons.attach_money,
                iconColor: Colors.red,
                title: 'Paypal',
                txt: 'Received Money',
                num: '+\$2,482',
                icon_: Icons.keyboard_arrow_up_outlined,
              iconColor_: Colors.green,
            ),
            const transection(
                icon: Icons.credit_card,
                iconColor: Colors.green,
                title: 'Credit Card',
                txt: 'Digital Ocean',
                num: '-\$2,482',
                icon_: Icons.keyboard_arrow_down_outlined,
              iconColor_: Colors.red,
            ),
            const transection(
                icon: Icons.wallet_membership,
                iconColor: Colors.amber,
                title: 'Matercard',
                txt: 'Netflix',
                num: '-\$99',
                icon_: Icons.keyboard_arrow_down_outlined,
              iconColor_: Colors.red,
            ),
            const transection(
                icon: Icons.account_balance_wallet_rounded,
                iconColor: Colors.deepPurpleAccent,
                title: 'Wallet',
                txt: 'Mac\'D',
                num: '-\$82',
                icon_: Icons.keyboard_arrow_down_outlined,
              iconColor_: Colors.red,
            ),
            const transection(
                icon: Icons.trending_up_rounded,
                iconColor: Colors.blue,
                title: 'Transfer',
                txt: 'Refund',
                num: '+\$8,482',
                icon_: Icons.keyboard_arrow_up_outlined,
              iconColor_: Colors.green,
            ),

          ],
        ),
      ),
    );
  }
}
