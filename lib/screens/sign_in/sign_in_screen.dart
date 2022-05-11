import 'package:flutter/material.dart';
import 'package:theme_selection/screens/sign_in/components/body.dart';

class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  _sign_inState createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: login(),
    );
  }
}
