import 'package:crypto_tracker/net/flutterfire.dart';
import 'package:crypto_tracker/ui/home_view.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: _emailField,
              decoration: InputDecoration(
                hintText: "example@email.com",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextFormField(
              controller: _passwordField,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width /
                  1.4, // size of device / 1.4
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: () async {
                  bool signupSuccess =
                      await signUp(_emailField.text, _passwordField.text);
                  if (signupSuccess) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ),
                    );
                  }
                },
                child: Text("Sign up"),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width /
                  1.4, // size of device / 1.4
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: () async {
                  bool signinSuccess =
                      await signIn(_emailField.text, _passwordField.text);
                  if (signinSuccess) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
