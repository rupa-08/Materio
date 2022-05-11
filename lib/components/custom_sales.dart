import 'package:flutter/material.dart';

class custom_sales extends StatelessWidget {
  final String? leadtxt;
  final IconData? icon;
  final Color? color;
  final String? title;
  final String? txt;
  final String? txt_;
  final String? num;
  final Color? txtcolor;
  final String? number;

  const custom_sales({
    Key? key,
    this.txt,
    this.num, this.color, this.leadtxt, this.icon, this.title, this.txt_, this.txtcolor, this.number,
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
                  Card(
                    color: txtcolor!.withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(leadtxt!, style: TextStyle(color: txtcolor!, fontWeight: FontWeight.bold),),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(bottom: 4),
                      child: Row(
                        children: [
                          Text(title!, style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 18)),
                          Icon(icon!, color: color!,),
                          Text(number!, style: TextStyle(color: color!, fontSize: 12)),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 4),
                      child: Text(txt!, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Text(num!, style: const TextStyle(color: Colors.black54, fontSize: 17, fontWeight: FontWeight.bold),),
                    Text(txt_!, style: const TextStyle(color: Colors.grey, fontSize: 12),),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
