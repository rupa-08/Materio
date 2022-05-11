import 'package:flutter/material.dart';
import 'package:theme_selection/components/custom_deposit.dart';

class deposit_withdraw extends StatefulWidget {
  const deposit_withdraw({Key? key}) : super(key: key);

  @override
  _deposit_withdrawState createState() => _deposit_withdrawState();
}

class _deposit_withdrawState extends State<deposit_withdraw> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 0.89,
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    "Deposit",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        ),
                  ),
                ],
              ),
            ),

            const custom_payment(
              img: 'https://cdn.iconscout.com/icon/free/png-256/gumroad-3521475-2944919.png',
              paymentType: 'Gumroad Account',
              txt: 'Sell UI kit',
              num: '+\$4,650',
              color: Colors.green,
            ),

            const custom_payment(
              img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrFtCxlnjI0fLntICZLAkIhYAmRt2L8G7A0YTidVoxV6oVFkQJfcAYlVnu3f_VdJBdyw0&usqp=CAU',
              paymentType: 'MasterCard',
              txt: 'Wallet Deposit',
              num: '+\$4,650',
              color: Colors.green,
            ),

            const custom_payment(
              img: 'https://cdn.iconscout.com/icon/free/png-256/stripe-2-498440.png',
              paymentType: 'Stripe Account',
              txt: 'iOS Application',
              num: '+\$4,650',
              color: Colors.green,
            ),
            const custom_payment(
              img: 'https://media.glassdoor.com/sqll/1821661/american-national-bank-squarelogo-1530787815360.png',
              paymentType: 'American Bank',
              txt: 'Bank Transfer',
              num: '+\$4,650',
              color: Colors.green,
            ),
            const custom_payment(
              img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPIvcD_NGgZzOu6QDrP_yFwaa1-GOuNtfwLLTLL9D3b40CveggydAII0ZudwhZqxwbdSc&usqp=CAU',
              paymentType: 'Bank Account',
              txt: 'Wallet Deposit',
              num: '+\$4,650',
              color: Colors.green,
            ),

             const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child:  Divider(color: Colors.grey,),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    "Withdraw",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const custom_payment(
              img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKnzdX3VRWijmxegqAbqUBBPIU_175cRxsLA&usqp=CAU',
              paymentType: 'Google Adsense',
              txt: 'Paypal Deposit',
              num: '-\$4,650',
              color: Colors.red,
            ),
            const custom_payment(
              img: 'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',
              paymentType: 'Github Enterprises',
              txt: 'Secure & compliance',
              num: '-\$4,650',
              color: Colors.red,
            ),
            const custom_payment(
              img: 'https://cdn.mos.cms.futurecdn.net/SDDw7CnuoUGax6x9mTo7dd.jpg',
              paymentType: 'Upgrade Slack Plan',
              txt: 'Debit card Deposit',
              num: '-\$4,650',
              color: Colors.red,
            ),
            const custom_payment(
              img: 'https://png.pngtree.com/png-vector/20190309/ourlarge/pngtree-cloud-logo-design-template-vector-isolated-png-image_783722.jpg',
              paymentType: 'Cloud Hosting',
              txt: 'Digital Ocean',
              num: '-\$4,650',
              color: Colors.red,
            ),
            const custom_payment(
              img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Amazon_Web_Services_Logo.svg/1280px-Amazon_Web_Services_Logo.svg.png',
              paymentType: 'Bank Account',
              txt: 'Choosing a Cloud Platform',
              num: '-\$4,650',
              color: Colors.red,
            ),

          ],
        )

    );
  }
}
