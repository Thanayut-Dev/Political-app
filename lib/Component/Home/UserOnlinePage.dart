import 'package:PoliticalParty/Component/Home/ProfileAvatarPage.dart';
import 'package:flutter/material.dart';

class UserOnlinePage extends StatelessWidget {
  const UserOnlinePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 4.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfileAvatarPage(),
            // child: Container(
            //   margin: EdgeInsets.all(2.0),
            //   height: 20.0,
            //   width: 20.0,
            //   color: Colors.red,
            // ),
          );
        },
      ),
    );
  }
}
