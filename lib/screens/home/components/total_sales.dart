import 'package:flutter/material.dart';

class sales extends StatefulWidget {
  const sales({Key? key}) : super(key: key);

  @override
  _salesState createState() => _salesState();
}

class _salesState extends State<sales> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
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
              children: [
                const Text("Total Sales", style: TextStyle(color: Colors.grey),),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ))
              ],
            ),
            Row(
              children: [
                const Text(
                  "\$21845",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                const Icon(
                  Icons.arrow_drop_up_sharp,
                  color: Colors.green,
                ),
                const Text(
                  "25.8%",
                  style: TextStyle(color: Colors.green, fontSize: 12),
                )
              ],
            ),
            Image.asset("assests/home/total_sales.jpg")
          ],
        ),
      ),
    );
  }
}
