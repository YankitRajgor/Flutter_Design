import 'package:flutter/material.dart';

enum SampleItem { ItemOne, ItemTwo, ItemThree }

class PopUpMenu_Screen extends StatefulWidget {
  const PopUpMenu_Screen({super.key});

  @override
  State<PopUpMenu_Screen> createState() => _PopUpMenu_ScreenState();
}

class _PopUpMenu_ScreenState extends State<PopUpMenu_Screen> {
  SampleItem? selectMenu;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "Pop Up Menu",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                child: PopupMenuButton(
                  initialValue: selectMenu,
                  onSelected: (SampleItem item) {
                    setState(() {
                      selectMenu = item;
                    });
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<SampleItem>>[
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.ItemOne,
                      child: Text('Item 1'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.ItemTwo,
                      child: Text('Item 2'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.ItemThree,
                      child: Text('Item 3'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
