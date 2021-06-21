import 'package:crypto_tracker/constants.dart';
import 'package:crypto_tracker/ui/background.dart';
import 'package:crypto_tracker/ui/sign_in.dart';
import 'package:crypto_tracker/ui/sign_up.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        topImage: "assets/images/main_top.png",
        bottomImage: "assets/images/main_bottom.png",
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME TO CRYPTO TRACKER",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/images/logo.png',
              ),
              Container(
                width: size.width / 1.4, // size of device / 1.4
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29.0),
                  color: primaryColor,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignIn();
                    }));
                  },
                  child: Text("LOGIN"),
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUp();
                    }));
                  },
                  child: Text("SIGN UP"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
