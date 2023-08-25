import 'package:flutter/material.dart';

class Snack_Screen extends StatefulWidget {
  const Snack_Screen({super.key});

  @override
  State<Snack_Screen> createState() => _Snack_ScreenState();
}

class _Snack_ScreenState extends State<Snack_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 20,
          title: Center(
            child: Text("SnackBar"),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () {
                  final snackBar = SnackBar(
                    elevation: 20,
                    content: Text("This Is A SnackBar"),
                    action: SnackBarAction(
                      label: "Undo",
                      textColor: Colors.green,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text(
                  'Show SnackBar',
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
