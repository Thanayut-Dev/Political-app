import 'package:PoliticalParty/Component/Home/Palette.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatarPage extends StatelessWidget {
  const ProfileAvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey[200],
          backgroundImage: CachedNetworkImageProvider(
              'https://cdn.pixabay.com/photo/2018/04/18/18/56/user-3331256__340.png'),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: Palette.online,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
