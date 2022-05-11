import 'package:flutter/material.dart';
import 'package:theme_selection/components/copyright.dart';
import 'package:theme_selection/components/ecom_card.dart';
import 'package:theme_selection/screens/eCommerce/components/congratulations.dart';
import 'package:theme_selection/screens/eCommerce/components/new_visitors.dart';
import 'package:theme_selection/screens/eCommerce/components/profit.dart';
import 'package:theme_selection/screens/eCommerce/components/revenue.dart';
import 'package:theme_selection/screens/eCommerce/components/sales.dart';
import 'package:theme_selection/screens/eCommerce/components/statistics.dart';
import 'package:theme_selection/screens/eCommerce/components/total_sales.dart';
import 'package:theme_selection/screens/eCommerce/components/transaction.dart';
import 'package:theme_selection/screens/eCommerce/components/users.dart';
import 'package:theme_selection/screens/home/components/meeting.dart';

class ecom extends StatefulWidget {
  const ecom({Key? key}) : super(key: key);

  @override
  _ecomState createState() => _ecomState();
}

class _ecomState extends State<ecom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: congratulation(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: e_card(
                  icon: Icons.trending_up_rounded,
                  iconColor: Colors.blue,
                  title: 'Transactions',
                  num: '1.2k',
                  percent: '+12%',
                  txt: 'Daily Transactions',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: e_card(
                  icon: Icons.attach_money,
                  iconColor: Colors.green,
                  title: 'Revenue',
                  num: '95.2k',
                  percent: '+12%',
                  txt: 'Revenue Increase',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: profit(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: total_sales(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: revenue(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: sales(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: transaction(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: e_card(
                  icon: Icons.trending_up_rounded,
                  iconColor: Colors.red,
                  title: 'Logistics',
                  num: '44.1k',
                  percent: '+12%',
                  txt: 'Revenue Increase',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: e_card(
                  icon: Icons.bug_report,
                  iconColor: Colors.amber,
                  title: 'Reports',
                  num: '268',
                  percent: '-8%',
                  txt: 'System Bugs',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: visitors(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: statistics(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: e_user(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: meeting(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: copyright(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
