import 'package:flutter/material.dart';

class btn_ extends StatelessWidget {
  const btn_({
    Key? key,
    this.btn_txt,
    this.press,
  }) : super(key: key);
  final String? btn_txt;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.6,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          primary: Colors.white,
          backgroundColor: Colors.deepPurple,
        ),
        onPressed: press as void Function()?,
        child: Text(
          btn_txt!,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
