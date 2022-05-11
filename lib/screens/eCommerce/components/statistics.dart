import 'package:flutter/material.dart';
import 'package:theme_selection/screens/eCommerce/components/custom_statistics.dart';

class statistics extends StatefulWidget {
  const statistics({Key? key}) : super(key: key);

  @override
  _statisticsState createState() => _statisticsState();
}

class _statisticsState extends State<statistics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Website Statistics',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.more_vert, color: Colors.grey,)
                  ],
                ),
                Row(
                  children:  [
                    Padding(
                      padding:  const EdgeInsets.all(5.0),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 75),
                            child: Text(
                              '4,590',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40),
                            ),
                          ),
                          Text(
                            'Total Traffic',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Image.network(
                      'https://ieltscanadatest.com/wp-content/uploads/2021/07/bar-chart-1000x.jpg',
                      height: 150,
                      width: 200,
                    )
                  ],
                ),
                const stat(
                  icon: Icons.circle,
                  icon_Color: Colors.green,
                  title: 'Direct',
                  num1: '86,471',
                  num2: '15 % ',
                  icon_: Icons.keyboard_arrow_down,
                  color_: Colors.redAccent,
                ),
                const stat(
                  icon: Icons.circle,
                  icon_Color: Colors.purple,
                  title: 'Organic Search',
                  num1: '57, 848',
                  num2: '85 % ',
                  icon_: Icons.keyboard_arrow_up,
                  color_: Colors.green,
                ),
                const stat(
                  icon: Icons.circle,
                  icon_Color: Colors.orange,
                  title: 'Referral',
                  num1: '2,534',
                  num2: '48 % ',
                  icon_: Icons.keyboard_arrow_up,
                  color_: Colors.green,
                ),
                const stat(
                  icon: Icons.circle,
                  icon_Color: Colors.red,
                  title: 'Mail',
                  num1: '977',
                  num2: '36 % ',
                  icon_: Icons.keyboard_arrow_down,
                  color_: Colors.redAccent,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

}
