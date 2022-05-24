import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyProgressBar extends StatelessWidget {
  double percentWatched = 0;

  MyProgressBar({required this.percentWatched});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 5,
      percent: percentWatched,
      progressColor: Colors.white,
      backgroundColor: Colors.grey[400],
    );
  }
}