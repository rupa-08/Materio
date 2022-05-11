import 'package:flutter/material.dart';
import 'package:theme_selection/screens/eCommerce/components/custom_user.dart';

class e_user extends StatefulWidget {
  const e_user({Key? key}) : super(key: key);

  @override
  _e_userState createState() => _e_userState();
}

class _e_userState extends State<e_user> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 0.35,
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
              ecom_user(
                txt: 'ciagu@geawo.gov',
                ID: '#ID',
                id_txt: '#2798',
                client_name: 'Joseph Wheeler',
                img: 'https://www.pngitem.com/pimgs/m/4-42408_vector-art-design-men-fashion-vector-art-illustration.png',
                status: 'STATUS',
                icon: Icons.email_outlined,
                color: Colors.deepPurpleAccent,
                client: 'CLIENT',
                total: 'TOTAL',
                num: '\$277.39',
                balance: 'BALANCE',
                balance_txt: 'Paid',
                b_color: Colors.green.shade200,
                press: (){},
              ),
              ecom_user(
                txt: 'nofbek@zu.org',
                ID: '#ID',
                id_txt: '#1304',
                client_name: 'May Lloyd',
                img: 'https://i.pinimg.com/originals/d3/02/e4/d302e4d06d9afae957b686985215270a.jpg',
                status: 'STATUS',
                icon: Icons.timeline,
                color: Colors.yellow,
                client: 'CLIENT',
                total: 'TOTAL',
                num: '\$277.39',
                balance: 'BALANCE',
                balance_txt: 'Paid',
                b_color: Colors.green.shade200,
                press: (){},
              ),
              ecom_user(
                txt: 'cidagehe@nonaloobo.com',
                ID: '#ID',
                id_txt: '#7900',
                client_name: 'William Mckinney',
                img: 'https://previews.123rf.com/images/jly19/jly191704/jly19170400115/76875196-avatar-men-design-men-icon-vector-illustration.jpg',
                status: 'STATUS',
                icon: Icons.timeline,
                color: Colors.yellow,
                client: 'CLIENT',
                total: 'TOTAL',
                num: '\$277.39',
                balance: 'BALANCE',
                balance_txt: 'Unpaid',
                b_color: Colors.redAccent.shade100,
                press: (){},
              ),
              ecom_user(
                txt: 'wafe@wavkes.net',
                ID: '#ID',
                id_txt: '#63036',
                client_name: 'Isabel Briggs',
                img: 'http://www.melisendevector.com/images/Image/femme_couronne_fleurs_preview_1371060474.jpg',
                status: 'STATUS',
                icon: Icons.timeline,
                color: Colors.deepPurpleAccent,
                client: 'CLIENT',
                total: 'TOTAL',
                num: '\$277.39',
                balance: 'BALANCE',
                balance_txt: 'Unpaid',
                b_color: Colors.redAccent.shade100,
                press: (){},
              ),ecom_user(
                txt: 'wafe@wavkes.net',
                ID: '#ID',
                id_txt: '#33052',
                client_name: 'Warreen Clarke',
                img: 'https://image.shutterstock.com/image-vector/image-young-attractive-man-suit-260nw-1581256273.jpg',
                status: 'STATUS',
                icon: Icons.mail_outline,
                color: Colors.deepPurpleAccent,
                client: 'CLIENT',
                total: 'TOTAL',
                num: '\$356.42',
                balance: 'BALANCE',
                balance_txt: 'Unpaid',
                b_color: Colors.redAccent.shade100,
                press: (){},
              ),ecom_user(
                txt: 'haurvu@wiendo.org',
                ID: '#ID',
                id_txt: '#23579',
                client_name: 'Adeline Bennett',
                img: 'http://www.melisendevector.com/images/Image/femme_couronne_fleurs_preview_1371060474.jpg',
                status: 'STATUS',
                icon: Icons.file_download_sharp,
                color: Colors.blue,
                client: 'CLIENT',
                total: 'TOTAL',
                num: '\$289.9',
                balance: 'BALANCE',
                balance_txt: 'Unpaid',
                b_color: Colors.redAccent.shade100,
                press: (){},
              ),
              ecom_user(
                txt: 'noj@ej.og',
                ID: '#ID',
                id_txt: '#81618',
                client_name: 'Abbie Webster',
                img: 'http://www.melisendevector.com/images/Image/femme_couronne_fleurs_preview_1371060474.jpg',
                status: 'STATUS',
                icon: Icons.timeline,
                color: Colors.amberAccent,
                client: 'CLIENT',
                total: 'TOTAL',
                num: '\$2282',
                balance: 'BALANCE',
                balance_txt: 'Paid',
                b_color: Colors.green.shade200,
                press: (){},
              ),

        ]));
  }
}
