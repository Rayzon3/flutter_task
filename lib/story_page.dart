import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/utils/progress_bar.dart';
import 'package:flutter_task/utils/story_bars.dart';

import 'stories/story_1.dart';
import 'stories/story_2.dart';
import 'stories/story_3.dart';
import 'stories/story_4.dart';
import 'stories/story_5.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int i = 0;

  final List<Widget> storiesList = [
    Story_1(),
    Story_2(),
    Story_3(),
    Story_4(),
    Story_5(),
  ];

  List<double> percentWatched = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < storiesList.length; i++) {
      percentWatched.add(0);
    }

    _startWatching();
  }

  void _startWatching() {
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        if (percentWatched[i] + 0.01 < 1) {
          percentWatched[i] += 0.01;
        } else {
          percentWatched[i] = 1;
          timer.cancel();
          //default single story
          //uncomment if want to see all stories in the list
          // if (i < storiesList.length - 1) {
          //   i++;
          //   _startWatching();
          // } else {
          //   Navigator.pop(context);
          // }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Story
          storiesList[i],

          //Progress Bar
          MyStoryBars(
            percentWatched: percentWatched,
          ),
        ],
      ),
    );
  }
}
