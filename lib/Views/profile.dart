import 'package:bcons/Components/button.dart';
import 'package:bcons/Components/colors.dart';
import 'package:bcons/Views/auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 77,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/user.png"),
                    radius: 75,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Andriyan",
                  style: TextStyle(fontSize: 28, color: primaryColor),
                ),
                const Text(
                  "andrian@thelho.com",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                Button(
                  label: "SIGN OUT",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AuthScreen()));
                  },
                ),
                const ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  subtitle: Text("Fullname"),
                  title: Text("Andriyan"),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 30,
                  ),
                  subtitle: Text("Email"),
                  title: Text("andrian@thelho.com"),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    size: 30,
                  ),
                  subtitle: Text("Username"),
                  title: Text("ayann12"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
