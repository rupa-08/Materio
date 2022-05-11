import 'package:flutter/material.dart';

class earning_card extends StatelessWidget {
  const earning_card(
      {Key? key,
      this.img,
      this.title,
      this.txt,
      this.txt_,
      })
      : super(key: key);
  final String? img;
  final String? title;
  final String? txt;
  final String? txt_;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Image.network(
                    img!,
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                  Text(
                    txt!,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            const Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    txt_!,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54
                        ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
