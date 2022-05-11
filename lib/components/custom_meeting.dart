import 'package:flutter/material.dart';

class custom_meeting extends StatelessWidget {
  const custom_meeting(
      {Key? key,
      this.img,
      this.title,
      this.txt,
      this.btn_txt,
      this.color,
      this.icon,
      this.txtcolor})
      : super(key: key);
  final String? img;
  final String? title;
  final IconData? icon;
  final String? txt;
  final String? btn_txt;
  final Color? color;
  final Color? txtcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Row(
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                img!,
              ),
            ),
            Column(
              children: [
                Text(title!, style: const TextStyle(color: Colors.grey, fontSize: 16),),
                Row(
                  children: [
                    Icon(icon!, size: 12, color: Colors.grey,),
                    Text(txt!, style: const TextStyle(color: Colors.grey, fontSize: 10),),
                  ],
                )
              ],
            ),
            const Spacer(),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: color!,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    btn_txt!,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: txtcolor!),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
