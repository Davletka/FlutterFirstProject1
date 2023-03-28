import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'dart:ui';
import 'package:first_project/home.dart';

import 'service/model.dart';
import 'service/service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

TextEditingController Email = TextEditingController();
TextEditingController Password = TextEditingController();

bool sign = false;
DbConnection dbConnection = DbConnection();

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Clown Mobile",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ),
                  ),
                  Image.asset("Images/scaredClown.png"),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  cursorColor: Colors.red,
                  controller: Email,
                  decoration: InputDecoration(
                    label: const Text(
                      "Email",
                    ),
                    labelStyle: const TextStyle(color: Colors.red),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.red)),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.red,
                  controller: Password,
                  decoration: InputDecoration(
                      label: const Text(
                        "Password",
                      ),
                      labelStyle: const TextStyle(color: Colors.red),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.red)),
                      prefixIcon: const Icon(
                        Icons.password_outlined,
                        color: Colors.red,
                      )),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  onPressed: () async {
                    if (sign == false) {
                      UserModel? user =
                          await dbConnection.signIn(Email.text, Password.text);
                      if (user != null) {
                        // Navigator.popAndPushNamed(context, '/home');
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      } else {}
                    } else {
                      UserModel? user =
                          await dbConnection.signUp(Email.text, Password.text);
                      if (user != null) {
                        // Navigator.popAndPushNamed(context, '/home');
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      } else {}
                    }
                  },
                  child: sign == false
                      ? const Text("Sign In")
                      : const Text("Sign Up"),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkWell(
                child: sign == false
                    ? const Text(
                        "Sign Up?",
                        style: TextStyle(color: Colors.red),
                      )
                    : const Text("Sign In"),
                onTap: () {
                  setState(() {
                    sign = !sign;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
