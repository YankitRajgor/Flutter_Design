import 'package:flutter/material.dart';

import 'CheckBox_Screen.dart';
import 'RadioButton_Screen.dart';

class ListView_Screen extends StatefulWidget {
  const ListView_Screen({super.key});

  @override
  State<ListView_Screen> createState() => _ListView_ScreenState();
}

class _ListView_ScreenState extends State<ListView_Screen> {
  final List<dynamic> Item = [
    {
      "Icons1": Icons.account_circle_outlined,
      "Icons2": Icons.account_balance_wallet_outlined,
      "Text1": "Task1",
      "Text2": "Task2",
      "Text3": "Task3",
      "Text4": "Task4",
      "Text5": "Task5",
      "Text6": "Task6",
      "Image": "assets/City.jpg"
    },
    {
      "Icons1": Icons.account_circle,
      "Icons2": Icons.account_balance_wallet,
      "Text1": "Task7",
      "Text2": "Task8",
      "Text3": "Task9",
      "Text4": "Task10",
      "Text5": "Task11",
      "Text6": "Task12",
      "Image": "assets/City.jpg"
    },
    {
      "Icons1": Icons.account_box,
      "Icons2": Icons.account_balance,
      "Text1": "Task13",
      "Text2": "Task14",
      "Text3": "Task15",
      "Text4": "Task16",
      "Text5": "Task17",
      "Text6": "Task18",
      "Image": "assets/City.jpg"
    },
  ];
  List<dynamic> images = [
    {
      "Image_": "assets/City.jpg",
      "Icons": Icons.favorite,
      "Test_": "Text 1",
      "Test__": "Text 2"
    },
    {
      "Image_": "assets/City.jpg",
      "Icons": Icons.favorite_border,
      "Test_": "Text 3",
      "Test__": "Text 4"
    },
    {
      "Image_": "assets/City.jpg",
      "Icons": Icons.favorite_border,
      "Test_": "Text 5",
      "Test__": "Text 6"
    },
    {
      "Image_": "assets/City.jpg",
      "Icons": Icons.favorite,
      "Test_": "Text 7",
      "Test__": "Text 8"
    },
    {
      "Image_": "assets/City.jpg",
      "Icons": Icons.favorite,
      "Test_": "Text 9",
      "Test__": "Text 10"
    },
    {
      "Image_": "assets/City.jpg",
      "Icons": Icons.favorite_border,
      "Test_": "Text 11",
      "Test__": "Text 12"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Stack&Position_ListView_GrideView",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 330,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: Item.length,
                        itemBuilder: (BuildContext Context, int index) {
                          return Container(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 3),
                                      color: Colors.teal),
                                  padding: EdgeInsets.all(3),
                                  height: 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child:
                                                  Icon(Item[index]["Icons1"]),
                                            ),
                                            Container(
                                              child:
                                                  Icon(Item[index]["Icons2"]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(Item[index]["Text1"]),
                                            ),
                                            Container(
                                              child: Text(Item[index]["Text2"]),
                                            ),
                                            Container(
                                              child: Text(Item[index]["Text3"]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(Item[index]["Text4"]),
                                            ),
                                            Container(
                                              child: Text(Item[index]["Text5"]),
                                            ),
                                            Container(
                                              child: Text(Item[index]["Text6"]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 40,
                                              child: Image.asset(
                                                  Item[index]["Image"]),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (Context) =>
                                                              RadioButton_Screen()));
                                                },
                                                icon: Icon(Icons.download))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  Container(
                    // color: Colors.yellow[300],
                    height: 300,
                    child: GridView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: images.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 5),
                        itemBuilder: (BuildContext Context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 3,
                                ),
                                color: Colors.yellow[300]),
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Container(
                                  child: Image.asset(images[index]["Image_"]),
                                ),
                                Positioned(
                                  right: 0,
                                  child: Icon(images[index]["Icons"]),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Text(images[index]["Test__"]),
                                ),
                                Positioned(
                                  bottom: 20,
                                  child: Text(images[index]["Test_"]),
                                ),
                                Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 20,
                                      width: 75,
                                      child: FlatButton(
                                        child: Text(
                                          'View',
                                        ),
                                        color: Colors.blueAccent,
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (Context) =>
                                                      CheckBox_Screen()));
                                        },
                                      ),
                                    ))
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
