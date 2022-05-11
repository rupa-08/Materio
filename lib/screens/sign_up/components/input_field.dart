import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:theme_selection/components/custom_button.dart';
import 'package:theme_selection/screens/sign_in/sign_in_screen.dart';

class input_field extends StatefulWidget {
  const input_field({Key? key}) : super(key: key);

  @override
  _input_fieldState createState() => _input_fieldState();
}

class _input_fieldState extends State<input_field> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  validate() {
    if (formkey.currentState!.validate()) {
      return sign_in();
    } else {
      print("Not validate");
    }
  }

  String? validatepass(value) {
    if (value!.isEmpty) {
      return "Required";
    } else if (value.length < 6) {
      return "Should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Should not be more than 15 characters";
    } else {
      return null;
    }
  }

  TextEditingController emailController = TextEditingController();
  String email = '';
  String password = '';
  bool? remember = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Form(
      autovalidate: true,
      key: formkey,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
              cursorColor: Colors.deepPurple,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User name',
              ),
              validator: MultiValidator([
                RequiredValidator(errorText: "Username is required"),
              ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
              cursorColor: Colors.deepPurple,
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              validator: MultiValidator([
                RequiredValidator(errorText: "Email is required"),
                EmailValidator(errorText: "Please enter valid email.")
              ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
                obscureText: true,
                cursorColor: Colors.deepPurple,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                validator: validatepass),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: Colors.deepPurple,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "I agree to",
                      style: TextStyle(color: Colors.grey),
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Text(
                          "Privacy policy & terms",
                          style: TextStyle(color: Colors.deepPurple),
                        )),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          btn_(
            btn_txt: "SIGN UP",
            press: validate,
          ),
        ],
      ),
    )));
  }
}
