import 'package:flutter/material.dart';
import 'package:theme_selection/components/no_account.dart';
import 'package:theme_selection/components/or_divider.dart';
import 'package:theme_selection/components/social_card.dart';
import 'package:theme_selection/screens/sign_in/components/input_field.dart';
import 'package:theme_selection/screens/sign_up/sign_up_screen.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

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
                "Welcome to Materio!",
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
                    "https://t3.ftcdn.net/jpg/02/40/04/16/360_F_240041620_9pyhVfM7TZ7a7ZyuraN8rcPqZIZloqEn.jpg",
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Please sign-in to your account and start \nthe adventure",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    child: Card(
                      color: Colors.deepPurple.shade100,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Admin Email: ",
                                  style: TextStyle(color: Colors.deepPurple.shade300),
                                ),
                                const Text(
                                  "admin@materio.com/",
                                  style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Pass: ",
                                  style: TextStyle(color: Colors.deepPurple.shade300),
                                ),
                                const Text(
                                  "admin",
                                  style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Row(
                              children: [
                                Text(
                                  "Client Email: ",
                                  style: TextStyle(color: Colors.deepPurple.shade300),
                                ),
                                const Text(
                                  "client@materio.com/",
                                  style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Pass: ",
                                  style: TextStyle(color: Colors.deepPurple.shade300),
                                ),
                                Text(
                                  "client",
                                  style: TextStyle(color: Colors.deepPurple.shade700, fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const txtfield(),
                  const SizedBox(
                    height: 10,
                  ),
                  NoAccountText(
                    txt: "New to our platform?",
                    clk_txt: "Create an account.",
                    press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const sign_up();
                      }));
                    },
                  ),
                  const SizedBox(height: 20),
                  const divider(),
                  const SizedBox(height: 20),
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
