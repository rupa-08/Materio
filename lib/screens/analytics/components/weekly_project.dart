import 'package:flutter/material.dart';
import 'package:theme_selection/components/project.dart';

class weekly_project extends StatefulWidget {
  const weekly_project({Key? key}) : super(key: key);

  @override
  _weekly_projectState createState() => _weekly_projectState();
}

class _weekly_projectState extends State<weekly_project> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 4.2,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            project(
              icon: Icons.bar_chart,
              title: 'Total Profit',
              num: '\$25.6k',
              txt: 'Weekly Project',
              icon_: Icons.more_vert,
            )
          ],
        )
    );
  }
}
