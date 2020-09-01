import 'package:PoliticalParty/Component/Home/PostContainerPage.dart';
import 'package:PoliticalParty/Component/Home/PostPage.dart';
import 'package:PoliticalParty/Component/Home/SliderAdsHeaderPage/AdsPage.dart';
import 'package:PoliticalParty/Component/Home/UserOnlinePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AdsImageBarPage(),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: UserOnlinePage(),
            ),
          ),
          SliverToBoxAdapter(
            child: PostPage(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PostContainerPage();
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
