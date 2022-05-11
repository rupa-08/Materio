import 'package:flutter/material.dart';

class statistics_card extends StatefulWidget {
  const statistics_card({Key? key}) : super(key: key);

  @override
  _statistics_cardState createState() => _statistics_cardState();
}

class _statistics_cardState extends State<statistics_card> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Statistics Card",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ))
              ],
            ),
            const Text(
              "Total 48.5 % growth this month",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                children: [
                  const card(
                    icon_: Icons.trending_up,
                    color_: Colors.deepPurple,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text(
                          "Sales",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        Text(
                          "245k",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const card(
                    icon_: Icons.person_outline_rounded,
                    color_: Colors.green,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: const [
                        Text(
                          "Customers",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        Text(
                          "12.5k",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                children: [
                  const card(
                    icon_: Icons.label_outline,
                    color_: Colors.yellow,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: const [
                        Text(
                          "Product",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        Text(
                          "1.54k",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  // const Spacer(),
                  // const card(
                  //   icon_: Icons.attach_money,
                  //   color_: Colors.blue,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(7.0),
                  //   child: Column(
                  //     children: const [
                  //       Text(
                  //         "Revenue",
                  //         style: TextStyle(fontSize: 11, color: Colors.grey),
                  //       ),
                  //       Text(
                  //         "\$88k",
                  //         style: TextStyle(
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.grey),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  final IconData? icon_;
  final Color? color_;

  const card({Key? key, this.icon_, this.color_}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.065,
      width: MediaQuery.of(context).size.width * 0.13,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: color_!,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)),
      ),
      child: Icon(
        icon_!,
        color: Colors.white,
      ),
    );
  }
}
