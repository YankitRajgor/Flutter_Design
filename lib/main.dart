import 'package:flutter/material.dart';
import 'AlertBox.dart';
import 'CheckBox_Screen.dart';
import 'Date_Picker_Screen.dart';
import 'Drawer.dart';
import 'ImagePicker_Screen.dart';
import 'Image_Slider_Screen.dart';
import 'Login_Screen.dart';
import 'PopUpMenu_Screen.dart';
import 'Progress_Bar_Screen.dart';
import 'RadioButton_Screen.dart';
import 'Slider_Screen.dart';
import 'Snack_Screen.dart';
import 'Sposition_Lview_Gview.dart';
import 'TextFormField.dart';
import 'Time_Picker_Screen.dart';
import 'Toast_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImagePicker_Screen(),
    );
  }
}
