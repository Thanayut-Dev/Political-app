import 'package:flutter/material.dart';

class ListNews extends StatelessWidget {
  const ListNews({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: List.generate(
          mocksup.length,
          (index) => Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  height: 100.0,
                  width: 2000.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        mocksup[index].imageAssets,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    mocksup[index].date,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class News {
  final String imageAssets;
  final String date;

  const News({this.imageAssets, this.date});
}

List<News> mocksup = const <News>[
  const News(
      imageAssets:
          'https://www.matichon.co.th/wp-content/uploads/2016/12/41-8.jpg',
      date: '01/01/2020'),
  const News(
      imageAssets:
          'https://www.matichon.co.th/wp-content/uploads/2016/12/41-8.jpg',
      date: '02/01/2020'),
  const News(
      imageAssets:
          'https://www.matichon.co.th/wp-content/uploads/2016/12/41-8.jpg',
      date: '03/01/2020'),
  const News(
      imageAssets:
          'https://www.matichon.co.th/wp-content/uploads/2016/12/41-8.jpg',
      date: '04/01/2020'),
  const News(
      imageAssets:
          'https://www.matichon.co.th/wp-content/uploads/2016/12/41-8.jpg',
      date: '05/01/2020'),
  const News(
      imageAssets:
          'https://www.matichon.co.th/wp-content/uploads/2016/12/41-8.jpg',
      date: '06/01/2020'),
  const News(
      imageAssets:
          'https://www.matichon.co.th/wp-content/uploads/2016/12/41-8.jpg',
      date: '07/01/2020'),
  const News(
      imageAssets:
          'https://www.matichon.co.th/wp-content/uploads/2016/12/41-8.jpg',
      date: '08/01/2020'),
];
