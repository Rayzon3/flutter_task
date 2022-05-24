import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  final function;

  Circles({this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        ),
      ),
    );
  }
}
