import 'package:bcons/Components/button.dart';
import 'package:bcons/Components/colors.dart';
import 'package:bcons/Components/textfield.dart';
import 'package:bcons/Views/profile.dart';
import 'package:bcons/Views/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userName = TextEditingController();
  final password = TextEditingController();

  bool isChecked = false;
  bool isLoginTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "E-BCons",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/logo.png",
              width: 320,
            ),
            InputField(
                hint: "Username",
                icon: Icons.account_circle,
                controller: userName),
            InputField(
                hint: "Password",
                icon: Icons.lock,
                controller: password,
                passwordInvisible: true),
            ListTile(
              horizontalTitleGap: 2,
              title: const Text("Remember me"),
              leading: Checkbox(
                activeColor: primaryColor,
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              ),
            ),
            Button(
                label: "LOGIN",
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    },
                    child: const Text("SIGN UP"))
              ],
            ),
            isLoginTrue
                ? Text(
                    "Username or Password is incorrect",
                    style: TextStyle(color: Colors.red.shade900),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
