import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/home/widgets/my_cards.dart';

class MyPageView extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;

  const MyPageView({Key key, this.top, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height * 0.55,
      top: top,
      child: PageView(
        onPageChanged: onChanged,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          MyCards(),
          MyCards(),
          MyCards(),
        ],
      ),
    );
  }
}
