import 'package:flutter/material.dart';

class Alert_Box_Screen extends StatefulWidget {
  const Alert_Box_Screen({super.key});

  @override
  State<Alert_Box_Screen> createState() => _Alert_Box_ScreenState();
}

class _Alert_Box_ScreenState extends State<Alert_Box_Screen> {
  yankit(BuildContext Context) async {
    return showDialog(
        context: context,
        builder: (Context) {
          return AlertDialog(
            title: Text("Varification"),
            content: Container(
              child: Text("Already Varification?"),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Yes"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Alert Dialog"),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                color: Colors.teal,
                width: 500,
                height: 100,
                child: TextButton(
                  onPressed: () {
                    yankit(context);
                  },
                  child: Text(
                    "ClickHere",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
