import 'package:flutter/material.dart';
import 'package:theme_selection/components/no_account.dart';
import 'package:theme_selection/components/or_divider.dart';
import 'package:theme_selection/components/social_card.dart';
import 'package:theme_selection/screens/sign_in/sign_in_screen.dart';
import 'package:theme_selection/screens/sign_up/components/input_field.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              const Text(
                "MATERIO",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Adventure starts here",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://cdn.dribbble.com/users/1787323/screenshots/9791845/media/81210e0150e626aa9678b53fc46bffa7.png?compress=1&resize=400x300",
                    height: 60,
                    width: 60,
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    "Make your app management easy and \n fun!",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 10,),
                  const input_field(),
                  const SizedBox(height: 10,),
                  NoAccountText(
                    txt: "Already have an account?",
                    clk_txt: "Sign in instead",
                    press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const sign_in();
                      }));
                    },
                  ),
                  const SizedBox(height: 20,),
                  const divider(),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocalCard(
                        icon: "assests/icons/facebook.jpg",
                        press: () {},
                      ),
                      SocalCard(
                        icon: "assests/icons/twitter.png",
                        press: () {},
                      ),
                      SocalCard(
                        icon: "assests/icons/google.png",
                        press: () {},
                      ),
                      SocalCard(
                        icon: "assests/icons/pintrest.png",
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
