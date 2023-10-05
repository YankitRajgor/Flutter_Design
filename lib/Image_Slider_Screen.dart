import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Toast_Screen.dart';

class Image_Slider_Screen extends StatefulWidget {
  const Image_Slider_Screen({super.key});

  @override
  State<Image_Slider_Screen> createState() => _Image_Slider_ScreenState();
}

class _Image_Slider_ScreenState extends State<Image_Slider_Screen> {
  int _curentindex = 1;
  final List<dynamic> img = [
    "assets/City.jpg",
    "assets/City.jpg",
    "assets/City.jpg",
    "assets/City.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("image Slider Screen"),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => Toast_Screen()));
              },
              icon: Icon(Icons.menu)),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    padEnds: false,
                    enlargeCenterPage: false,
                    aspectRatio: 1.0,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          print("$index: index");
                          _curentindex = index;
                        },
                      );
                    },
                  ),
                  items: img
                      .map(
                        (item) => Card(
                          child: Container(
                            child: Center(
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
