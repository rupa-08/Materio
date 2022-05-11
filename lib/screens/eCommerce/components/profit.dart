import 'package:flutter/material.dart';
import 'package:theme_selection/components/custom_button.dart';
import 'package:theme_selection/screens/home/components/statictics_card.dart';

class profit extends StatefulWidget {
  const profit({Key? key}) : super(key: key);

  @override
  _profitState createState() => _profitState();
}

class _profitState extends State<profit> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 1.31,
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total Profit",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 24,
                    ),
              ),
              Column(
                children: [
                  Image.asset("assests/ecom/bar_graph.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                             Text(
                              "\$482.85k",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(Icons.more_vert, color: Colors.grey,)
                          ],
                        ),
                        const Text(
                          "Last month balance 82.85k",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),

                        Row (
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 45, 10, 0),
                              child: card(
                                color_: Colors.green.shade200,
                                icon_: Icons.trending_up_rounded,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "\$48,568.20",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Text(
                                    "Total Profit",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        Row (
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 12, 8, 0),
                              child: card(
                                color_: Colors.deepPurpleAccent.withOpacity(0.4),
                                icon_: Icons.attach_money,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "\$38, 453.25",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Text(
                                    "Total Income",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 12, 8, 0),
                              child: card(
                                color_: Colors.grey.shade300,
                                icon_: Icons.bar_chart,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "\$2,453.45",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Text(
                                    "Total Expense",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: btn_(
                      btn_txt: 'VIEW REPORT',
                      press: (){},
                    ),
                  )

                ],
              ),
            ],
          ),
        )
    );
  }
}
