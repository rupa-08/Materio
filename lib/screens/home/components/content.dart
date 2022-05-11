import 'package:flutter/material.dart';
import 'package:theme_selection/components/copyright.dart';
import 'package:theme_selection/screens/home/components/card_1.dart';
import 'package:theme_selection/screens/home/components/developer_meetup.dart';
import 'package:theme_selection/screens/home/components/meeting.dart';
import 'package:theme_selection/screens/home/components/new_project.dart';
import 'package:theme_selection/screens/home/components/revenue_report.dart';
import 'package:theme_selection/screens/home/components/sales_overview.dart';
import 'package:theme_selection/screens/home/components/statictics_card.dart';
import 'package:theme_selection/screens/home/components/total_growth.dart';
import 'package:theme_selection/screens/home/components/total_sales.dart';
import 'package:theme_selection/screens/home/components/upgrade_plan.dart';
import 'package:theme_selection/screens/home/components/weekly_sales.dart';

class b_content extends StatefulWidget {
  const b_content({Key? key}) : super(key: key);

  @override
  _b_contentState createState() => _b_contentState();
}

class _b_contentState extends State<b_content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
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
                  child: const card_one(
                    txt: "Ratings",
                    view: "13k",
                    positive_percent: "+38%",
                    time: "Year of 2021",
                    img: "assests/home/girrl.jpg",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28),
                child: Container(
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
                  child: const card_one(
                    txt: "Sessions",
                    view: "24.5k",
                    positive_percent: "-22%",
                    time: "Last Week",
                    img: "assests/home/boy.jpg",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: sales(),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: revenue_report(),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: statistics_card(),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: sales_overview(),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: weekly_sales(),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: total_growth(),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: new_project(),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: upgrade_plan(),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: meeting(),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: developer_meetup(),
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
