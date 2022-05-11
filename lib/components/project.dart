import 'package:flutter/material.dart';

class project extends StatelessWidget {
  final IconData? icon;
  final IconData? icon_;
  final String? title;
  final String? num;
  final String? txt;

  const project(
      {Key? key, this.icon, this.icon_, this.title, this.num, this.txt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 15, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: 25),
                  child: Card(
                      color: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:  Padding(
                        padding:  const EdgeInsets.all(7.0),
                        child: Icon(
                          icon!,
                          color: Colors.white,
                        ),
                      )),
                ),
                Spacer(),

                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Icon(
                    icon_!,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title!,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                num!,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                txt!,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
