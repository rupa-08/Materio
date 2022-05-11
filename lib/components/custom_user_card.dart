import 'package:flutter/material.dart';

class u_card extends StatefulWidget {


  const u_card({Key? key}) : super(key: key);

  @override
  State<u_card> createState() => _u_cardState();
}

class _u_cardState extends State<u_card> {
  bool? remember = false;
  late final String? txt;
  late final String? clk_txt;
  late final Function? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Checkbox(
            value: remember,
            activeColor: Colors.deepPurple,
            onChanged: (value) {
              setState(() {
                remember = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
