import 'package:flutter/material.dart';

class payment_type extends StatelessWidget {
  final String? img;
  final String? paymentType;
  final String? card_no;
  final String? txt;

  const payment_type({
    Key? key,
    this.img,
    this.paymentType,
    this.card_no,
    this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          Image.asset(img!,
          height: 40,
            width: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.all(4),
              child: Text(paymentType!),
              ),
              Padding(padding: const EdgeInsets.all(4),
                child: Text(card_no!),
              ),
            ],
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(txt!, style: TextStyle(color: Colors.grey),),
            ),
          )
        ],
      )
    );
  }
}
