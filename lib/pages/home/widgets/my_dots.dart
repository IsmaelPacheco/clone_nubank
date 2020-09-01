import 'package:flutter/material.dart';

class MyDots extends StatelessWidget {
  final currentIndex;

  const MyDots({Key key, this.currentIndex}) : super(key: key);

  Color getColors(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColors(0),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColors(1),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColors(2),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
