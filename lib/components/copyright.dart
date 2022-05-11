import 'package:flutter/material.dart';

class copyright extends StatefulWidget {
  const copyright({Key? key}) : super(key: key);

  @override
  _copyrightState createState() => _copyrightState();
}

class _copyrightState extends State<copyright> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Row(
        children: const [
          Text('COPYRIGHT 2021 ', style: TextStyle(color: Colors.grey),),
          Text('Themeselection', style: TextStyle(color: Colors.purple),)
        ],
      ),
    );
  }
}
