import 'package:flutter/material.dart';
import 'package:theme_selection/screens/home/components/body.dart';

class home_scrn extends StatefulWidget {
  const home_scrn({Key? key}) : super(key: key);

  @override
  _home_scrnState createState() => _home_scrnState();
}

class _home_scrnState extends State<home_scrn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: body(),
    );
  }
}
