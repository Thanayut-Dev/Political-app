import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlidTrendImageBar extends StatefulWidget {
  SlidTrendImageBar({Key key}) : super(key: key);

  @override
  _SlidTrendImageBarState createState() => _SlidTrendImageBarState();
}

class _SlidTrendImageBarState extends State<SlidTrendImageBar> {
  final List<String> images = [
    'https://mpics.mgronline.com/pics/Images/563000006719401.JPEG',
    'https://cdni-cf.ch7.com/dm/sz-md/i/images/2020/08/28/5f4878fd054400.37599025.jpg',
    'https://cdni-cf.ch7.com/dm/sz-md/i/images/2020/08/04/5f28de4bad92d7.13037761.jpg',
    'https://cdni-cf.ch7.com/dm/sz-md/i/images/2020/08/03/5f27fd3598c3f0.89824628.jpg',
  ];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
        // precacheImage(AssetImage(asset), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        viewportFraction: 1,
      ),
      itemBuilder: (context, index) {
        return Container(
          child: Center(
              child: Image.network(
            images[index],
            fit: BoxFit.cover,
            width: 1000,
            height: 200,
          )),
        );
      },
    );
  }
}
