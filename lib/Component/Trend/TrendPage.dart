import 'package:PoliticalParty/Component/Trend/TrendList.dart';
import 'package:PoliticalParty/Component/Trend/SliderNewsPage/AdsPage.dart';
import 'package:flutter/material.dart';

class TrendPage extends StatelessWidget {
  const TrendPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          TrendImageBarPage(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "กระแสข่าวพรรคการเมือง",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 500,
            child: TrendListPage(),
          ),
        ],
      ),
    );
  }
}
