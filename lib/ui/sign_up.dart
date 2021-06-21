import 'package:crypto_tracker/constants.dart';
import 'package:crypto_tracker/net/flutterfire.dart';
import 'package:crypto_tracker/ui/home_view.dart';
import 'package:flutter/material.dart';

import 'background.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        topImage: "assets/images/signup_top.png",
        bottomImage: "assets/images/main_bottom.png",
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                "assets/images/coins.png",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                width: size.width / 1.4,
                child: TextFormField(
                  cursorColor: primaryColor,
                  controller: _emailField,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        29.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.cyan[60],
                    hintText: "example@email.com",
                    hintStyle: TextStyle(
                      color: Colors.grey[300],
                    ),
                    labelText: "Email",
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 35,
              ),
              Container(
                width: size.width / 1.4,
                child: TextFormField(
                  cursorColor: primaryColor,
                  controller: _passwordField,
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(Icons.visibility),
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        29.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.cyan[60],
                    hintText: "password",
                    hintStyle: TextStyle(
                      color: Colors.grey[300],
                    ),
                    labelText: "Password",
                  ),
                ),
              ),
              SizedBox(height: size.height / 35),
              Container(
                width: size.width / 1.4, // size of device / 1.4
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29.0),
                  color: primaryColor,
                ),
                child: MaterialButton(
                  onPressed: () async {
                    bool signinSuccess =
                        await signUp(_emailField.text, _passwordField.text);
                    if (signinSuccess) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeView(),
                        ),
                      );
                    }
                  },
                  child: Text("SIGNUP"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
