import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/home/my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        brightness: Brightness.dark,
      ),
      title: 'Clone Nubank',
      home: MyHomePage(),
    );
  }
}
