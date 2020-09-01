import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyCards extends StatelessWidget {
  const MyCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        height: screenHeigth * 0.45,
      ),
    );
  }
}
