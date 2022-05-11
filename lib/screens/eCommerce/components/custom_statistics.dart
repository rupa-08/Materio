import 'package:flutter/material.dart';

class stat extends StatelessWidget {
  final Color? icon_Color;
  final IconData? icon;
  final String? title;
  final String? num1;
  final String? num2;
  final IconData? icon_;
  final Color? color_;
  const stat({Key? key, this.icon_Color, this.icon, this.title, this.num1, this.num2, this.icon_, this.color_}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children:  [
        const Divider(),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Icon(icon!, color: icon_Color!, size: 24,),
            ),

            Text(title!, style: const TextStyle(color: Colors.grey, fontSize: 14),),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Text(num1!, style: const TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Text(num2!, style: const TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Icon(icon_!, color: color_!,),
            ),
          ],
        )
      ],),
    );
  }
}
