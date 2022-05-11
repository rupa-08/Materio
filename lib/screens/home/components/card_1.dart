import 'package:flutter/material.dart';

class card_one extends StatelessWidget {
  const card_one(
      {Key? key,
      this.txt,
      this.view,
      this.positive_percent,
      //this.negative_percent,
      this.time,
      this.img})
      : super(key: key);
  final String? txt;
  final String? view;
  final String? positive_percent;

  //final String? negative_percent;
  final String? time;
  final String? img;

  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: double.infinity,
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt!,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        view!,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                      Text(
                        positive_percent!,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.green),
                      )
                    ],
                  ),
                  const Spacer(),
                  Card(
                      child: Text(
                    time!,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ))
                ],
              ),
            ),
            const Spacer(),
            Image.asset(img!)
          ],
        ),
      ),
    );
  }
}
