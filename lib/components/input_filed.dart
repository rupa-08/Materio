import 'package:flutter/material.dart';

class txt_field extends StatelessWidget {
  final String? hint_txt;
  const txt_field({Key? key, this.hint_txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        cursorColor: Colors.deepPurple,
        decoration: InputDecoration(
          hoverColor: Colors.deepPurple,
          border: OutlineInputBorder(),
          hintText: hint_txt!,
        ),
      )
    );
  }
}
