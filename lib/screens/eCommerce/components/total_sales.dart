import 'package:flutter/material.dart';

class total_sales extends StatefulWidget {
  const total_sales({Key? key}) : super(key: key);

  @override
  _total_salesState createState() => _total_salesState();
}

class _total_salesState extends State<total_sales> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
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
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Total Sales',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children:  [
                      const Text(
                        'Calculated in last 7 days',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Row(
                        children: const [
                          Text(
                            '\$25,980',
                            style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '+15.6%',
                            style: TextStyle(color: Colors.green, fontSize: 12),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            "assests/ecom/circle_chart.jpg",
          )
        ],
      ),
    );
  }

}
