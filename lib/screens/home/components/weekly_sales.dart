import 'package:flutter/material.dart';
import 'package:theme_selection/screens/home/components/statictics_card.dart';

class weekly_sales extends StatefulWidget {
  const weekly_sales({Key? key}) : super(key: key);

  @override
  _weekly_salesState createState() => _weekly_salesState();
}

class _weekly_salesState extends State<weekly_sales> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.3,
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
                  "Weekly Sales",
                  style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.more_vert, color: Colors.grey,)
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top:12),
                  child: Text(
                    "Total 85.4k Sales",
                    style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Image.asset("assests/home/bar_graph.jpg"),
            Row(
              children: [
                Row(
                  children: [
                    card(
                      color_: Colors.deepPurple.shade100,
                      icon_: Icons.trending_up,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: const [
                          Text(
                            "21.8k",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Sales",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    card(
                      color_: Colors.green.shade100,
                      icon_: Icons.attach_money,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: const [
                          Text(
                            "21.8k",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Sales",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
