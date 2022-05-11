import 'package:flutter/material.dart';
import 'package:theme_selection/components/custom_user_card.dart';

class ecom_user extends StatelessWidget {
  final String? txt;
  final String? ID;
  final String? id_txt;
  final String? img;
  final String? total;
  final String? num;
  final String? client;
  final String? client_name;
  final String? status;
  final String? balance;
  final String? balance_txt;
  final IconData? icon;
  final Color? color;
  final Color? b_color;
  final Function? press;

  const ecom_user(
      {Key? key, this.txt, this.ID, this.id_txt, this.img, this.total, this.num, this.client, this.client_name, this.status, this.balance_txt, this.icon, this.color, this.press, this.balance, this.b_color,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Divider(color: Colors.grey),
            Row(
              children: const [
                Spacer(),
                u_card(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    ID!,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        id_txt!,
                        style:
                        const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    status!,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Card(
                          color: color!.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                                icon!,
                                color: color!,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    client!,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(
                              img!,
                            ),
                          ),
                          Text(
                            client_name!,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                      Text(
                        txt!,
                        style:
                        const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    total!,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        num!,
                        style:
                        const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding:  const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    balance!,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Card(
                          color: b_color!,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              balance_txt!,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
