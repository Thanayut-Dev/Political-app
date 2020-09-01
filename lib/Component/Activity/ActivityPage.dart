import 'package:PoliticalParty/Component/Activity/SliderActivityPage/AdsPage.dart';
import 'package:PoliticalParty/Component/Activity/Activity.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ActivityImageBarPage(),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 570,
              child: Activity(),
            ),
          ),
        ],
      ),
    );
  }
}
