import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class Time_Picker_Screen extends StatefulWidget {
  const Time_Picker_Screen({super.key});

  @override
  State<Time_Picker_Screen> createState() => _Time_Picker_ScreenState();
}

class _Time_Picker_ScreenState extends State<Time_Picker_Screen> {
  TextEditingController timeinput = TextEditingController();

  @override
  void initState() {
    timeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Time Picker"),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: TextField(
                controller: timeinput,
                decoration: InputDecoration(
                  icon: Icon(Icons.watch_later_outlined),
                  labelText: "Please Enter Time",
                ),
                readOnly: true,
                onTap: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );
                  if (pickedTime != null) {
                    setState(() {
                      timeinput.text = pickedTime.format(context);
                      print("time = ${timeinput.text.toString()}");
                    });
                  } else {
                    print("Time Is Not Selected");
                  }
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
