import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

class Progress_Bar_One extends StatefulWidget {
  const Progress_Bar_One({super.key});

  @override
  State<Progress_Bar_One> createState() => _Progress_Bar_OneState();
}

class _Progress_Bar_OneState extends State<Progress_Bar_One> {
  late bool _loading;
  late double _progressvalue;
  late bool _loading1;
  late double _progressvalue1;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressvalue = 0.0;
    _loading1 = false;
    _progressvalue1 = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "Progress Bar",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      body: Container(
        // padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(40),
              child: _loading
                  ? Column(
                      children: [
                        LinearProgressIndicator(
                          backgroundColor: Colors.yellow,
                          valueColor: AlwaysStoppedAnimation(Colors.blue),
                          value: _progressvalue,
                        ),
                        Text("${(_progressvalue * 100).round()}%"),
                      ],
                    )
                  : Text(
                      "Press Btn to Downloading",
                      style: TextStyle(fontSize: 25),
                    ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.white70, width: 3))),
                onPressed: () {
                  setState(() {
                    _loading = !_loading;
                    _progressvalue = 0;
                    _updateProgress();
                  });
                },
                child: Icon(
                  Icons.download,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                // padding: EdgeInsets.all(40),
                child: _loading1
                    ? Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            strokeWidth: 10,
                            valueColor: AlwaysStoppedAnimation(Colors.teal),
                            value: _progressvalue1,
                          ),
                          Text("${(_progressvalue1 * 100).round()}%")
                        ],
                      )
                    : Text(
                        "Press Btn To Downloading",
                        style: TextStyle(fontSize: 25),
                      )),
            Center(
              child: Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3))),
                    onPressed: () {
                      setState(() {
                        _loading1 = !_loading1;
                        _progressvalue1 = 0;
                        _updateProgress1();
                      });
                    },
                    child: Icon(
                      Icons.download_outlined,
                      color: Colors.black,
                    )),
              ),
            )
          ],
        ),
      ),
    ));
  }

  void _updateProgress() {
    const onesec = const Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        _progressvalue += 0.1;
        if (_progressvalue.toStringAsFixed(1) == "1.0") {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }

  void _updateProgress1() {
    const onesec = const Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        _progressvalue1 += 0.1;
        if (_progressvalue1.toStringAsFixed(1) == "1.0") {
          _loading1 = false;
          t.cancel();
          return;
        }
      });
    });
  }
}
