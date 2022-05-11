import 'package:flutter/material.dart';

class cst_content extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final String? txt;
  const cst_content({Key? key, this.icon, this.title, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon!, color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title!, style: const TextStyle(fontSize: 15, color: Colors.black54),),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(txt!, style: const TextStyle(fontSize: 12, color: Colors.grey),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
