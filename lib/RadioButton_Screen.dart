import 'dart:ffi';

import 'package:flutter/material.dart';

class RadioButton_Screen extends StatefulWidget {
  const RadioButton_Screen({super.key});

  @override
  State<RadioButton_Screen> createState() => _RadioButton_ScreenState();
}

class _RadioButton_ScreenState extends State<RadioButton_Screen> {
  String? age;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("How Old Are You ?"),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.radio_button_checked)),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              RadioListTile(
                  title: Text("1 to 5"),
                  value: "Five",
                  groupValue: age,
                  onChanged: (value) {
                    setState(() {
                      age = value.toString();
                    });
                  }),
              Divider(),
              RadioListTile(
                  title: Text("5 to 10"),
                  value: "Ten",
                  groupValue: age,
                  onChanged: (value) {
                    setState(() {
                      age = value.toString();
                    });
                  }),
              Divider(),
              RadioListTile(
                  title: Text("10 to 15"),
                  value: "Fifteen",
                  groupValue: age,
                  onChanged: (value) {
                    setState(() {
                      age = value.toString();
                    });
                  }),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
