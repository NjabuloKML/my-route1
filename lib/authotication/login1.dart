import 'package:flutter/material.dart';
import 'package:googlemap2/authotication/register.dart';
import 'package:googlemap2/buttons/button2.dart';
import 'package:googlemap2/clickable_images/square_tile.dart';
import 'package:googlemap2/clickable_images/text.dart';
import 'package:googlemap2/pages/map_page.dart';
import 'package:googlemap2/textfileds/textfield.dart';

class LoginPage1 extends StatefulWidget {
  final Function()? onTap;
  LoginPage1({super.key, required this.onTap});

  @override
  State<LoginPage1> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage1> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.asset("lib/images/bus.jpeg"),
                ),
                const Text(
                  "LOGIN HERE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 15),

                // email textfield
                MyTextfiled(
                  controller: emailController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextfiled(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                // sign in button
                ButtonTwo(
                  texxt: "Sign In",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => const MyMapPage()));
                  },
                ),

                const SizedBox(height: 15),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    SquareTile(
                        onTap: () {}, imagePath: 'lib/images/google.png'),

                    const SizedBox(width: 25),

                    // apple button
                    SquareTile(onTap: () {}, imagePath: 'lib/images/apple.png')
                  ],
                ),

                const SizedBox(height: 10),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Mytext(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (c) => SignUpScreen()));
                        },
                        texxt: "Not a member? Register now"),
                  ],

                ),
                 SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
