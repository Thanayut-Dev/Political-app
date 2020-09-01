import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  Activity({Key key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            mockup.length,
            (index) => Padding(
                  padding: EdgeInsets.only(
                      left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.lightBlue[100],
                    ),
                    height: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          height: 150,
                          child: Image.network(
                            mockup[index].acimg,
                            fit: BoxFit.cover,
                            width: 370.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                          child: Text(
                            mockup[index].acdate,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10, top: 5, bottom: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  width: 150,
                                  height: 40,
                                  child: Center(
                                    child: Text(
                                      'รายละเอียดกิจกรรม',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 5, bottom: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  width: 50,
                                  height: 40,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.pinkAccent,
                                    size: 30,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}

class Mockup {
  final String acimg;
  final String acdate;

  const Mockup({this.acimg, this.acdate});
}

List<Mockup> mockup = const <Mockup>[
  const Mockup(
    acimg:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcStg3yO0cqiYG7zztXW4KcafFvuqWxtuqc9Nw&usqp=CAU',
    acdate: 'Date : 5/08/2020',
  ),
  const Mockup(
    acimg:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcStg3yO0cqiYG7zztXW4KcafFvuqWxtuqc9Nw&usqp=CAU',
    acdate: 'Date : 15/08/2020',
  ),
  const Mockup(
    acimg:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcStg3yO0cqiYG7zztXW4KcafFvuqWxtuqc9Nw&usqp=CAU',
    acdate: 'Date : 23/08/2020',
  ),
  const Mockup(
    acimg:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcStg3yO0cqiYG7zztXW4KcafFvuqWxtuqc9Nw&usqp=CAU',
    acdate: 'Date : 31/08/2020',
  )
];
