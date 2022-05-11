import 'package:flutter/material.dart';
import 'package:theme_selection/screens/sign_up/components/body.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: signup(),
    );
  }
}
