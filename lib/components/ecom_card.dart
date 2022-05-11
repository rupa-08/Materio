import 'package:flutter/material.dart';

class e_card extends StatelessWidget {
  final Color? iconColor;
  final String? title;
  final String? num;
  final String? percent;
  final String? txt;
  final IconData? icon;


  const e_card({Key? key, this.iconColor, this.title, this.num, this.percent, this.txt, this.icon}) : super(key: key);

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
      child: Padding(
        padding:  EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:  [
                Padding(
                  padding: EdgeInsets.only(bottom:17),
                  child: Card(
                      color: iconColor!,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:  Padding(
                        padding:  const EdgeInsets.all(7.0),
                        child: Icon(
                          icon!,
                          color: Colors.white,
                        ),
                      )),

                ),

                const Spacer(),
                const Padding(
                  padding:  EdgeInsets.only(bottom:17),
                  child:  Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
             Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                title!,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children:  [
                  Text(
                    num!,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      percent!,
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                txt!,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
