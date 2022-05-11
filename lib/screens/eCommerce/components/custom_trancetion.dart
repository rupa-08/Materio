import 'package:flutter/material.dart';

class transection extends StatelessWidget {
  final Color? iconColor;
  final Color? iconColor_;
  final String? title;
  final String? num;
  final String? txt;
  final IconData? icon;
  final IconData? icon_;

  const transection(
      {Key? key,
      this.iconColor,
      this.title,
      this.num,
      this.txt,
      this.icon,
      this.iconColor_,
      this.icon_})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(7, 20, 7, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.095,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: iconColor!.withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2)),
                  ),
                  child: Icon(
                    icon!,
                    color:iconColor!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        txt!,
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  num!,
                  style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Icon(
                  icon_!,
                  color: iconColor_!,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
