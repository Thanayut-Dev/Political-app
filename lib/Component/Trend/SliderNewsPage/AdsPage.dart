import 'package:PoliticalParty/Component/Trend/SliderNewsPage/SlideNewsImageBarPageImageBar.dart';
import 'package:flutter/material.dart';

class TrendImageBarPage extends StatelessWidget {
  const TrendImageBarPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 188,
          color: Colors.white,
          child: Center(
            child: SlidTrendImageBar(),
          ),
        ),
        Center(
            // child: SearchBarPage(),
            ),
      ],
    );
  }
}
