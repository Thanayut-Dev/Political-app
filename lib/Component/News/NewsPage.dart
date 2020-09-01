import 'package:PoliticalParty/Component/News/SliderNewsPage/SlidNewsBar.dart';
import 'package:PoliticalParty/Component/News/news/widgets/main_news.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: ListView(
    //     children: <Widget>[
    //       // Slidenews(),
    //       SlidNewsBar(),
    //       Container(
    //         height: 520,
    //         // child: PopularityPage(),
    //       )
    //     ],
    //   ),
    // );
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // SlideNews(),
          SlidNewsBar(),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              "ข่าวสาร",
              style: TextStyle(fontSize: 50.0, color: Colors.orange),
            ),
          ),
          Container(
            height: 500,
            child: ListNews(),
          ),
        ],
      ),
    );
  }
}
