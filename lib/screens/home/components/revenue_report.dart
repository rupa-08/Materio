import 'package:flutter/material.dart';

class revenue_report extends StatefulWidget {
  const revenue_report({Key? key}) : super(key: key);

  @override
  _revenue_reportState createState() => _revenue_reportState();
}

class _revenue_reportState extends State<revenue_report> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.1,
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
          children: [
            Row(
              children: const [
                Text(
                  "Revenue Report",
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                Card(
                  color: Colors.white60,
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                  "This Year",
                  style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                ),
                    ))
              ],
            ),
            Image.asset("assests/home/revenue_report.jpg")
          ],
        ),
      ),
    );
  }
}
