import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
// ontap function is used for a button to respond , this my be button bofore it is initialised in the gesturedetector
  final Function()? onTap;
  final String texxt;

  const MyButton({super.key, required this.onTap, required this.texxt});

  @override
  Widget build(BuildContext context) {
    //gesture detector repsonf when you touch the screen in the app/mobile app
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            texxt,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
