import 'package:PoliticalParty/Component/Activity/SliderActivityPage/SlideActivityImageBarPageImageBar.dart';
import 'package:flutter/material.dart';

class ActivityImageBarPage extends StatelessWidget {
  const ActivityImageBarPage({
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
            child: SlidActivityImageBar(),
          ),
        ),
        Center(
            // child: SearchBarPage(),
            ),
      ],
    );
  }
}
