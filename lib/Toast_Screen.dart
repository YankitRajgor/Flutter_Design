import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast_Screen extends StatefulWidget {
  const Toast_Screen({super.key});

  @override
  State<Toast_Screen> createState() => _Toast_ScreenState();
}

class _Toast_ScreenState extends State<Toast_Screen> {
  void showToast() {
    Fluttertoast.showToast(
        msg: 'Toast',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey,
        textColor: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Toast_Screen")),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: ElevatedButton(
                    onPressed: () => showToast(), child: Text("Show Toast")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
