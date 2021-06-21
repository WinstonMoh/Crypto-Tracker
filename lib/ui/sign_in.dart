import 'package:crypto_tracker/net/flutterfire.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'background.dart';
import 'home_view.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        topImage: "assets/images/main_top.png",
        bottomImage: "assets/images/login_bottom.png",
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                "assets/images/login.png",
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
                    bool signupSuccess =
                        await signIn(_emailField.text, _passwordField.text);
                    if (signupSuccess) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeView(),
                        ),
                      );
                    }
                  },
                  child: Text("LOGIN"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
