import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({Key? key, this.txt, this.clk_txt, this.press
  }) : super(key: key);


  final String? txt;
  final String? clk_txt;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( txt!,
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
            GestureDetector(
              onTap: press as void Function()?,
              child: Text(clk_txt!,
                style: TextStyle(fontSize: 11, color: Colors.deepPurple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

