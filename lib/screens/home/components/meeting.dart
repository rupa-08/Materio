import 'package:flutter/material.dart';
import 'package:theme_selection/components/custom_meeting.dart';

class meeting extends StatefulWidget {
  const meeting({Key? key}) : super(key: key);

  @override
  _meetingState createState() => _meetingState();
}

class _meetingState extends State<meeting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.98,
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
        children:  [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Text(
                  "Meeting Schedule",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          custom_meeting(
              img: 'https://w7.pngwing.com/pngs/7/618/png-transparent-man-illustration-avatar-icon-fashion-men-avatar-face-fashion-girl-heroes.png',
              title:'Call with Woods',
              txt:'21 Jul | 08:20-10:30',
              btn_txt:'Business',
              color: Colors.purple.shade50,
              icon:Icons.calendar_today_sharp,
              txtcolor: Colors.deepPurple
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: custom_meeting(
                img: 'http://www.melisendevector.com/images/Image/femme_couronne_fleurs_preview_1371060474.jpg',
                title:'Call with halda',
                txt:'24 Jul | 11:00-12:00',
                btn_txt:'Medetation',
                color: Colors.lightGreenAccent.shade100,
                icon:Icons.calendar_today_sharp,
                txtcolor: Colors.green
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: custom_meeting(
                img: 'https://www.pngitem.com/pimgs/m/4-42408_vector-art-design-men-fashion-vector-art-illustration.png',
                title:'Conference call',
                txt:'28 Jul | 05:00-06:45',
                btn_txt:'Medetation',
                color: Colors.lightGreenAccent.shade100,
                icon:Icons.calendar_today_sharp,
                txtcolor: Colors.green
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: custom_meeting(
                img: 'https://i.pinimg.com/originals/d3/02/e4/d302e4d06d9afae957b686985215270a.jpg',
                title:'Meeting with Mark',
                txt:'03 Aug | 07:00-08:00',
                btn_txt:'Meetup',
                color: Colors.white70,
                icon:Icons.calendar_today_sharp,
                txtcolor: Colors.grey
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: custom_meeting(
                img: 'https://www.pngitem.com/pimgs/m/4-42408_vector-art-design-men-fashion-vector-art-illustration.png',
                title:'Meeting with Oakland',
                txt:'14 Aug | 04:15-05:30',
                btn_txt:'Business',
                color: Colors.purple.shade50,
                icon:Icons.calendar_today_sharp,
                txtcolor: Colors.deepPurple
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: custom_meeting(
                img: 'http://www.melisendevector.com/images/Image/femme_couronne_fleurs_preview_1371060474.jpg',
                title:'Meeting with Carl',
                txt:'05 Oct | 10:00-12:45',
                btn_txt:'Party',
                color: Colors.yellow.shade100,
                icon:Icons.calendar_today_sharp,
                txtcolor: Colors.yellow.shade800
            ),
          )
        ],
      ),

    );
  }
}
