import 'dart:async';

import 'package:flutter/material.dart';
import 'package:googlemap2/authotication/log_in.dart';

class SplushScreen extends StatefulWidget {
  const SplushScreen({super.key});

  @override
  State<SplushScreen> createState() => _SplushScreenState();
}

class _SplushScreenState extends State<SplushScreen> {
  startTime() {
    Timer(const Duration(seconds: 5), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginPage()));
    });
  }

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/images/bus.jpeg'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "WELCOME TO MY ROUTE ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
