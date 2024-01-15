import 'package:flutter/material.dart';
import 'package:googlemap2/authotication/login1.dart';
import 'package:googlemap2/buttons/button2.dart';
import 'package:googlemap2/textfileds/textfield.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confrimPasswordTextEditingController =
      TextEditingController();

//valiadate the input on the form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset("lib/images/bus.jpeg"),
            ),
            const Text(
              "REGISTER HERE",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            MyTextfiled(
              controller: nameTextEditingController,
              hintText: 'Name',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextfiled(
              controller: emailTextEditingController,
              hintText: 'email',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextfiled(
              controller: phoneTextEditingController,
              hintText: 'Phone',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextfiled(
              controller: passwordTextEditingController,
              hintText: 'Password',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextfiled(
              controller: confrimPasswordTextEditingController,
              hintText: 'Confirm Password',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonTwo(
              texxt: "Register",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (c) => LoginPage1(
                              onTap: () {},
                            )));
              },
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
