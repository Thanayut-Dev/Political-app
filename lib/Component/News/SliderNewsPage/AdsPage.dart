import 'package:PoliticalParty/Component/News/SliderNewsPage/SlidNewsBar.dart';
import 'package:flutter/material.dart';

class NewsImageBarPage extends StatelessWidget {
  const NewsImageBarPage({
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
            child: SlidNewsBar(),
          ),
        ),
        Center(
            // child: SearchBarPage(),
            ),
      ],
    );
  }
}
