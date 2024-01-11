import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:googlemap2/authotication/log_in.dart';
import 'package:googlemap2/widgets/progressbar.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

//valiadate the input on the form
  validateform() {
    if (nameTextEditingController.text.length < 3) {
      Fluttertoast.showToast(msg: "Name must be above 3 charactors");
    } else if (!emailTextEditingController.text.contains("@")) {
      Fluttertoast.showToast(msg: "invalid email address");
    } else if (phoneTextEditingController.text.isEmpty) {
      Fluttertoast.showToast(msg: "invalid phone number");
    } else if (passwordTextEditingController.text.length < 3) {
      Fluttertoast.showToast(msg: "Password must be 6 or more characterss");
    } else {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext c) {
            return const ProgressBar();
          });
    }
  }

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
            TextField(
              controller: nameTextEditingController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  hintText: "Name",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.zero),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailTextEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: "Email",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: phoneTextEditingController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                  hintText: "Phone",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordTextEditingController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Password ",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                validateform();
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => LoginPage()));
                // call the validate method
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(235, 1, 55, 105)),
              child: const Text(
                "REGISTER",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
