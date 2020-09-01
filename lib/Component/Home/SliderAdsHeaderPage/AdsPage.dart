import 'package:PoliticalParty/Component/Home/SliderAdsHeaderPage/SlideAdsImageBar.dart';
import 'package:flutter/material.dart';

class AdsImageBarPage extends StatelessWidget {
  const AdsImageBarPage({
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
            child: SlidImageBar(),
          ),
        ),
        Center(
            // child: SearchBarPage(),
            ),
      ],
    );
  }
}
