import 'package:flutter/material.dart';
import 'package:theme_selection/components/custom_user_card.dart';

class custom_users extends StatelessWidget {
  final String? txt;
  final String? txt_;
  final String? img;
  final String? email;
  final String? email_address;
  final String? user_name;
  final String? role;
  final String? assigned_role;
  final String? status;
  final String? yStatus;
  final IconData? icon;
  final Color? color;
  final Function? press;

  const custom_users(
      {Key? key,
      this.txt,
      this.img,
      this.email,
      this.email_address,
      this.user_name,
      this.role,
      this.assigned_role,
      this.status,
      this.yStatus,
      this.icon,
      this.color,
      this.press,
      this.txt_})
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
                    txt!,
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
                            user_name!,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                      Text(
                        txt_!,
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
                    email!,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        email_address!,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
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
                    role!,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Card(
                          color: color!,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(
                              icon!,
                              color: Colors.white//color!,
                            ),
                          )),
                      Text(
                        assigned_role!,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
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
                          color: color!.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              yStatus!,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: color!,
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
