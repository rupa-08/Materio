import 'package:flutter/material.dart';

class congrats extends StatefulWidget {
  const congrats({Key? key}) : super(key: key);

  @override
  _congratsState createState() => _congratsState();
}

class _congratsState extends State<congrats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.5,
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
            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Congratulations Jhon',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                const Text(
                  'You have won trophy',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Spacer(),
                const Text(
                  '\$48k',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                buildConatineer()
              ],
            ),
          ),
          Image.network("https://media.istockphoto.com/vectors/gold-trophy-with-the-name-plate-of-the-winner-of-the-competition-vector-id1168757141?k=20&m=1168757141&s=612x612&w=0&h=_jia0PPMGux63K2gqp-o0OzRcHbd6bvjVQJ70rz3nF8=",
          height: 100,width: 50,
          )
        ],
      ),
    );
  }

  Widget buildConatineer() => Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
      height: 37,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.deepPurple.shade300,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5)),
        ),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text("VIEW SALES", style: TextStyle(color: Colors.white),),
        )),
  );
}
