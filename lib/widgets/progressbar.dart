import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return const SimpleCircularProgressBar(
      progressColors: [
        Colors.cyan,
        Colors.green,
        Colors.amberAccent,
        Colors.redAccent,
        Colors.purpleAccent
      ],
      backColor: Colors.blueGrey,
    );
  }
}
