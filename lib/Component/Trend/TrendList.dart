import 'package:flutter/material.dart';

class TrendListPage extends StatefulWidget {
  TrendListPage({Key key}) : super(key: key);

  @override
  _TrendListPageState createState() => _TrendListPageState();
}

class _TrendListPageState extends State<TrendListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            mockup.length,
            (index) => Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.deepPurple[300],
                        ),
                        height: 160,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                              child: Container(
                                width: 175,
                                height: 200,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        child: Text(
                                      mockup[index].partyname,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        child: Text(
                                          mockup[index].partydetail,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        child: Text(
                                          mockup[index].partypolicy,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 50),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Container(
                                              child: Icon(
                                                Icons.call_missed_outgoing,
                                                color: Colors.greenAccent[400],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              mockup[index].popularity,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Container(
                                              child: Icon(
                                                Icons.favorite,
                                                color: Colors.pink[300],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              mockup[index].partylike,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                              child: Container(
                                width: 170,
                                height: 200,
                                color: Colors.black,
                                child: Image.network(
                                  mockup[index].img,
                                  fit: BoxFit.cover,
                                  // width: 145,
                                  // height: 200,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}

class Mockup {
  final String partyname;
  final String partydetail;
  final String partypolicy;
  final String popularity;
  final String partylike;
  final String img;
  const Mockup(
      {this.partyname,
      this.partydetail,
      this.partypolicy,
      this.partylike,
      this.popularity,
      this.img});
}

List<Mockup> mockup = const <Mockup>[
  const Mockup(
      partyname: 'พรรคก้าวไกล',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQtM2LHXQs55A8co-C2Xx7M7HKGNSQIstlCZQ&usqp=CAU'),
  const Mockup(
      partyname: 'พรรคเพื่อไทย',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQtM2LHXQs55A8co-C2Xx7M7HKGNSQIstlCZQ&usqp=CAU'),
  const Mockup(
      partyname: 'พรรคพลังประชารัฐ',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQtM2LHXQs55A8co-C2Xx7M7HKGNSQIstlCZQ&usqp=CAU'),
  const Mockup(
      partyname: 'พรรคประชาธิปปัตย์',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQtM2LHXQs55A8co-C2Xx7M7HKGNSQIstlCZQ&usqp=CAU'),
  const Mockup(
      partyname: 'พรรคเศรษฐกิจใหม่',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQtM2LHXQs55A8co-C2Xx7M7HKGNSQIstlCZQ&usqp=CAU'),
];
