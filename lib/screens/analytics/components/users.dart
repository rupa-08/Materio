import 'package:flutter/material.dart';
import 'package:theme_selection/components/custom_user.dart';

class users extends StatefulWidget {
  const users({Key? key}) : super(key: key);

  @override
  _usersState createState() => _usersState();
}

class _usersState extends State<users> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 0.57,
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
          children: const [
            custom_users(
              txt: 'USER',
              img: 'https://w7.pngwing.com/pngs/7/618/png-transparent-man-illustration-avatar-icon-fashion-men-avatar-face-fashion-girl-heroes.png',
              email: 'EMAIL',
              email_address: 'nuroani@icpair.com',
              user_name: 'Joseph Wheeler',
              txt_: '@misley2',
              role: 'ROLE',
              assigned_role: 'suscriber',
              icon: Icons.person_outline_rounded,
              color: Colors.deepPurpleAccent,
              status: 'STATUS',
              yStatus: 'Pending',
            ),

            custom_users(
              txt: 'USER',
              img: 'https://w7.pngwing.com/pngs/7/618/png-transparent-man-illustration-avatar-icon-fashion-men-avatar-face-fashion-girl-heroes.png',
              email: 'EMAIL',
              email_address: 'edit@icpair.com',
              user_name: 'Isabel Briggs',
              txt_: '@crsby3',
              role: 'ROLE',
              assigned_role: 'editor',
              icon: Icons.edit,
              color: Colors.green,
              status: 'STATUS',
              yStatus: 'Active',
            ),
            custom_users(
              txt: 'USER',
              img: 'https://w7.pngwing.com/pngs/7/618/png-transparent-man-illustration-avatar-icon-fashion-men-avatar-face-fashion-girl-heroes.png',
              email: 'EMAIL',
              email_address: 'edit@icpair.com',
              user_name: 'Warren Clarke',
              txt_: '@warren4',
              role: 'ROLE',
              assigned_role: 'maintainer',
              icon: Icons.trending_up_rounded,
              color: Colors.blue,
              status: 'STATUS',
              yStatus: 'Active',
            ),

            custom_users(
              txt: 'USER',
              img: 'https://w7.pngwing.com/pngs/7/618/png-transparent-man-illustration-avatar-icon-fashion-men-avatar-face-fashion-girl-heroes.png',
              email: 'EMAIL',
              email_address: 'edit@icpair.com',
              user_name: 'Andeline Bennett',
              txt_: '@andeline',
              role: 'ROLE',
              assigned_role: 'author',
              icon: Icons.settings,
              color: Colors.deepPurpleAccent,
              status: 'STATUS',
              yStatus: 'Pending',
            ),
            custom_users(
              txt: 'USER',
              img: 'https://w7.pngwing.com/pngs/7/618/png-transparent-man-illustration-avatar-icon-fashion-men-avatar-face-fashion-girl-heroes.png',
              email: 'EMAIL',
              email_address: 'edit@icpair.com',
              user_name: 'Cristina Briggs',
              txt_: '@andeline',
              role: 'ROLE',
              assigned_role: 'editor',
              icon: Icons.edit,
              color: Colors.green,
              status: 'STATUS',
              yStatus: 'Active',
            ),

          ],
        ));
  }
}
