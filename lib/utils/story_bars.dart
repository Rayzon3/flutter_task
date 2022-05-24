import 'package:flutter/material.dart';
import 'package:flutter_task/utils/progress_bar.dart';

class MyStoryBars extends StatelessWidget {
  List<double> percentWatched = [];

  MyStoryBars({required this.percentWatched});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 8, right: 8),
      child: Row(children: [
        Expanded(
            child: MyProgressBar(
          percentWatched: percentWatched[0],
        ))
      ]),
    );
  }
}
