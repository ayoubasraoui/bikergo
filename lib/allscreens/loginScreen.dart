import 'package:bikergo/allscreens/registerScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String idscreen = "login" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 150.0),
                  Image(
                    image: AssetImage("images/bikergo logo.png"),
                    width: 600.0,
                    height: 150.0,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    "Login as Rider",
                    style: TextStyle(fontSize: 24.0, fontFamily: "Brand Bold"),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(height: 1.0),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.0,
                            ),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(height: 1.0),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.0,
                            ),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[500],
                            foregroundColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(24.0),
                            ),
                          ),
                          child: Container(
                            height: 50.0,
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(fontSize: 18.0, fontFamily: "Brand Bold"),
                              ),
                            ),
                          ),
                          onPressed: () {
                            print("clicked");
                          },
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: (
                    ) {
                      Navigator.pushNamedAndRemoveUntil(context, RegisterScreen.idscreen, (route) => false);
                    },
                    child: Text(
                      "Do not have an Account? Register Here!",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 50.0,
            right: 16.0,
            child: IconButton(
              icon: Icon(Icons.help_outline),
              onPressed: () {
                // Handle settings button press
              },
            ),
          ),
        ],
      ),
    );
  }
}