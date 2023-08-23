import 'package:flutter/material.dart';

import 'Drawer.dart';

class Textfield_Screen extends StatefulWidget {
  const Textfield_Screen({super.key});

  @override
  State<Textfield_Screen> createState() => _Textfield_ScreenState();
}

class _Textfield_ScreenState extends State<Textfield_Screen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Textfield"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2)),
                      labelText: 'Number',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Number';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        // labelText: "Password",
                        // prefixIcon: Icon(Icons.ac_unit),
                        // suffixIcon: Icon(Icons.accessibility_rounded),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        enabledBorder: (OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                        focusedBorder: (OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.teal,
                  height: 50,
                  width: 200,
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Drawer_Screen()));
                      }
                      ;
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
