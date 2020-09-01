import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/home/widgets/my_app_bar.dart';
import 'package:nubank_clone/pages/home/widgets/my_dots.dart';
import 'package:nubank_clone/pages/home/widgets/page_view_app.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showMenu;
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          MyPageView(
            top: _screenHeigth * 0.24,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Positioned(
            top: _screenHeigth * 0.8,
            child: MyDots(
              currentIndex: _currentIndex,
            ),
          )
        ],
      ),
    );
  }
}
