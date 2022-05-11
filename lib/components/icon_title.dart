import 'package:flutter/material.dart';

class icon_title extends StatelessWidget {
  final IconData? icon;
  final String? txt;
  const icon_title({Key? key, this.icon, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Icon(icon!, size: 27, color: Colors.grey,),
            Text(txt!, style: TextStyle(fontSize: 15, color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
