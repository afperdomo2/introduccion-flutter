import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<String> _images = [
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=10",
    "https://picsum.photos/250?image=11",
    "https://picsum.photos/250?image=12",
    "https://picsum.photos/250?image=13",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: _swiper(),
      ),
    );
  }

  Widget _swiper() {
    return SizedBox(
      height: 300,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            _images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: _images.length,
        pagination: const SwiperPagination(),
      ),
    );
  }
}
