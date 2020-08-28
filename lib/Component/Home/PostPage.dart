import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(
                    'https://cdn.pixabay.com/photo/2018/04/18/18/56/user-3331256__340.png'),
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'คุณกำลังคิดอะไรอยู่'),
                ),
              ),
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: () => print('Live'),
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text('Live'),
                ),
                VerticalDivider(width: 8.0),
                FlatButton.icon(
                  onPressed: () => print('Live'),
                  icon: Icon(
                    Icons.collections,
                    color: Colors.green,
                  ),
                  label: Text('รูปภาพ'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
