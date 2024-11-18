import 'package:bcons/Components/button.dart';
import 'package:bcons/Components/colors.dart';
import 'package:bcons/Views/login.dart';
import 'package:bcons/Views/signup.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Authentication",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              const Text(
                "Authenticate to Access your vital information",
                style: TextStyle(color: Colors.grey),
              ),
              Expanded(
                  child: Image.asset(
                "assets/logo.png",
                width: 320,
                height: 55,
              )),
              Button(
                  label: "LOGIN",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  }),
              Button(
                  label: "SIGNUP",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  }),
            ],
          ),
        ),
      )),
    );
  }
}
