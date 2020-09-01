import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlideNews extends StatefulWidget {
  SlideNews({Key key}) : super(key: key);

  @override
  _SlideNewsState createState() => _SlideNewsState();
}

class _SlideNewsState extends State<SlideNews> {
  final List<String> images = [
    'https://www.matichon.co.th/wp-content/uploads/2016/12/41-8.jpg',
    'https://siamrath.co.th/files/styles/1140/public/img/20200104/ca5abcec155c16c76c3158ad5fb242ed6fa0b9d6c3f528effc7e6f6df2860eca.jpg?itok=ay4agZ7C',
    'https://obs.line-scdn.net/0ht9Fep3xCKxZ7HACElzdUQUFKKHlIcDgVHyp6FSdydSIDe2gUR3w3eFgfdnUEf2xIFS1jdFgZMCcFLm9BTn02/w644',
  ];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      images.forEach((asset) {
        precacheImage(NetworkImage(asset), context);
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
