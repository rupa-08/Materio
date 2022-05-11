import 'package:flutter/material.dart';
import 'package:theme_selection/components/earning_card.dart';

class earning extends StatefulWidget {
  const earning({Key? key}) : super(key: key);

  @override
  _earningState createState() => _earningState();
}

class _earningState extends State<earning> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.21,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Total Earning",
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "\$24, 895",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 24),
                child: Text(
                  "Compared to \$84, 325 last year",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      ),
                ),
              ),
              const earning_card(
                img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM12yG8loTZFIR33Mx3pTP-CgMP8prRYijow&usqp=CAU',
                title: 'Zipcar',
                txt: 'Vuejs, React & HTML',
                txt_: '\$24,895.65',
              ),
              const earning_card(
                img: 'https://www.seekpng.com/png/small/2-23280_on-icon-free-download-png-and-vector-flash.png',
                title: 'Bitbank',
                txt: 'Sketch, Figma & XD',
                txt_: '\$24,895.65',
              ),
              const earning_card(
                img: 'https://consideringapple.com/wp-content/uploads/2021/03/Aesthetic-settings-icon-pastel-5.jpg',
                title: 'Aviato',
                txt: 'Html & Angular',
                txt_: '\$24,895.65',
              )
            ],
          )),
    );
  }
}
