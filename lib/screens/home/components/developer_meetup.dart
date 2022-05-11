import 'package:flutter/material.dart';
import 'package:theme_selection/components/custom_content.dart';
import 'package:theme_selection/components/icon_title.dart';

class developer_meetup extends StatelessWidget {
  const developer_meetup({Key? key}) : super(key: key);

  final double coverHeight = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.7,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          buildCoverImage(),
          buildMeetup(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Row(
            children: const [
              icon_title(
                icon: Icons.star_border,
                txt: 'Intrested',
              ),
              icon_title(
                icon: Icons.check_circle_outline,
                txt: 'Joined',
              ),
              icon_title(
                icon: Icons.person_outline_rounded,
                txt: 'Invited',
              ),
              icon_title(
                icon: Icons.more_horiz,
                txt: 'More',
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          const cst_content(
            icon: Icons.watch_later_outlined,
            title: 'Tuesday, 24 january, 10:20 - 12:30',
            txt: 'After 1 week',
          ),
          const cst_content(
            icon: Icons.location_on_outlined,
            title: 'The Rochard NYC',
            txt: '1305 Lexington Ave, New York',
          )
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
        //color: Colors.grey,
        child: Image.network(
          "https://cdn.mos.cms.futurecdn.net/6t8Zh249QiFmVnkQdCCtHK.jpg",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildMeetup() => Container(
          child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.deepPurple.shade100,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Jan \n 24",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Developer Meetup",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(top: (8.0)),
                  child: Text(
                    "The WordPress open source, free software \n project is the community behind the ...",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ],
            ),
          )
        ],
      ));
}
