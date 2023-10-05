import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login_Screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  late SharedPreferences login;
  late String email;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    login = await SharedPreferences.getInstance();
    setState(() {
      email = login.getString('email')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "SharedPreferences",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Center(
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      login.setBool('login', true);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login_Screen()));
                    },
                    child: Text("Logout"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
