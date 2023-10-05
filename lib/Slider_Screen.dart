import 'package:flutter/material.dart';

class Slider_Screen extends StatefulWidget {
  const Slider_Screen({super.key});

  @override
  State<Slider_Screen> createState() => _Slider_ScreenState();
}

class _Slider_ScreenState extends State<Slider_Screen> {
  int _value = 50;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Slider_Screen"),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.volume_down,
                    size: 30,
                  ),
                  Expanded(
                      child: Slider(
                    value: _value.toDouble(),
                    min: 1.0,
                    max: 100.0,
                    // divisions: 20,
                    // activeColor: Colors.blue,
                    // inactiveColor: Colors.grey,
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
