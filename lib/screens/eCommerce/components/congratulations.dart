import 'package:flutter/material.dart';

class congratulation extends StatefulWidget {
  const congratulation({Key? key}) : super(key: key);

  @override
  _congratulationState createState() => _congratulationState();
}

class _congratulationState extends State<congratulation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.8,
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
                    'Congratulations Jhon',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                ),
                 ),
                 const Spacer(),
                 Row(
                   children: const [
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text(
                        'You have won done 72% \n more sales today. \n Check your new raising \n badge in  your profile.',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                     ),
                   ],
                 ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            "assests/home/boy.jpg",
          )
        ],
      ),
    );
  }

}
