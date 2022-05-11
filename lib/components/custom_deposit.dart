import 'package:flutter/material.dart';

class custom_payment extends StatelessWidget {
  final String? img;
  final String? paymentType;
  final String? txt;
  final String? num;
  final Color? color;

  const custom_payment({
    Key? key,
    this.img,
    this.paymentType,
    this.txt,
    this.num, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                children: [
                  Image.network(img!,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(bottom: 4),
                      child: Text(paymentType!, style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold)),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 4),
                      child: Text(txt!, style: const TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 19),
                  child: Text(num!, style: TextStyle(color: color!, fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
        )
    );
  }
}
