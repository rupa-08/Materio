import 'package:flutter/material.dart';

class divider extends StatelessWidget {
  const divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          children: const [
            Expanded(
                child: Divider()
            ),
            SizedBox(
              width: 10,
            ),
            Text("OR", style: TextStyle(color: Colors.grey),),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Divider()
            ),
          ]
      )
    );
  }
}
