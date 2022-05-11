import 'package:flutter/material.dart';
import 'package:theme_selection/components/copyright.dart';
import 'package:theme_selection/screens/analytics/components/congrulations.dart';
import 'package:theme_selection/screens/analytics/components/deposit.dart';
import 'package:theme_selection/screens/analytics/components/earning.dart';
import 'package:theme_selection/screens/analytics/components/performance.dart';
import 'package:theme_selection/screens/analytics/components/profit.dart';
import 'package:theme_selection/screens/analytics/components/sales.dart';
import 'package:theme_selection/screens/analytics/components/session.dart';
import 'package:theme_selection/screens/analytics/components/users.dart';
import 'package:theme_selection/screens/analytics/components/weekly_overview.dart';
import 'package:theme_selection/screens/analytics/components/weekly_project.dart';
import 'package:theme_selection/screens/analytics/components/yearly_project.dart';
import 'package:theme_selection/screens/home/components/statictics_card.dart';

class analytics extends StatefulWidget {
  const analytics({Key? key}) : super(key: key);

  @override
  _analyticsState createState() => _analyticsState();
}

class _analyticsState extends State<analytics> {
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
                child: congrats(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: statistics_card(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: weekly_overview(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: earning(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: profit(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: weekly_project(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: yearly_project(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: session(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: performance(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: deposit_withdraw(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: sales(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: users(),
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
