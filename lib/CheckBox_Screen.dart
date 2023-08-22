import 'dart:ffi';

import 'package:flutter/material.dart';

class CheckBox_Screen extends StatefulWidget {
  const CheckBox_Screen({super.key});

  @override
  State<CheckBox_Screen> createState() => _CheckBox_ScreenState();
}

class _CheckBox_ScreenState extends State<CheckBox_Screen> {
  bool checkbox_all = false;
  bool checkbox_ = false;
  bool checkbox_two = false;
  bool checkbox_three = false;
  bool checkbox_four = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Which FastFood Do You Like ?",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.check_box_outlined,color: Colors.black),
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blue)),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        checkbox_ = !checkbox_;
                        checkbox_two = !checkbox_two;
                        checkbox_three = !checkbox_three;
                        checkbox_four = !checkbox_four;
                      });
                    },
                    child: Row(
                      children: [
                        Checkbox(
                            value: checkbox_all,
                            onChanged: (value) {
                              setState(() {
                                checkbox_ = !checkbox_;
                                checkbox_two = !checkbox_two;
                                checkbox_three = !checkbox_three;
                                checkbox_four = !checkbox_four;
                              });
                            }),
                        Text(
                          "Select All",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      checkbox_ = !checkbox_;
                    });
                  },
                  child: Row(
                    children: [
                      Checkbox(
                          value: checkbox_,
                          onChanged: (value) {
                            setState(() {
                              checkbox_ = !checkbox_;
                            });
                          }),
                      Text("Dabeli")
                    ],
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    setState(() {
                      checkbox_two = !checkbox_two;
                    });
                  },
                  child: Row(
                    children: [
                      Checkbox(
                          value: checkbox_two,
                          onChanged: (value) {
                            setState(() {
                              checkbox_two = !checkbox_two;
                            });
                          }),
                      Text("Vadapav")
                    ],
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    setState(() {
                      checkbox_three = !checkbox_three;
                    });
                  },
                  child: Row(
                    children: [
                      Checkbox(
                          value: checkbox_three,
                          onChanged: (value) {
                            setState(() {
                              checkbox_three = !checkbox_three;
                            });
                          }),
                      Text("Puff")
                    ],
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    setState(() {
                      checkbox_four = !checkbox_four;
                    });
                  },
                  child: Row(
                    children: [
                      Checkbox(
                          value: checkbox_four,
                          onChanged: (value) {
                            setState(() {
                              checkbox_four = !checkbox_four;
                            });
                          }),
                      Text("Sandwich")
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
