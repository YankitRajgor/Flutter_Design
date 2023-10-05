import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home_Screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController Email = TextEditingController();
  TextEditingController password = TextEditingController();
  late SharedPreferences login;
  late bool newuser;

  void check_already_login() async {
    login = await SharedPreferences.getInstance();
    newuser = (login.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Home_Screen()));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_already_login();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    Email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Login Screen"),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        controller: Email,
                        decoration: InputDecoration(
                          hintText: "email",
                          border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.black)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your email';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: TextFormField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.black)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Password';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          String email = Email.text;
                          if (formkey.currentState!.validate()) {
                            login.setBool('login', false);
                            login.setString('email', email);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home_Screen()));
                          }
                          ;
                        },
                        child: Text("Login"),
                      ),
                    )
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
