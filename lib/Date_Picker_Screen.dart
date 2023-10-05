import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date_Picker_Screen extends StatefulWidget {
  @override
  State<Date_Picker_Screen> createState() => _Date_Picker_ScreenState();
}

class _Date_Picker_ScreenState extends State<Date_Picker_Screen> {
  TextEditingController dateinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Date Picker"),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: TextField(
              controller: dateinput,
              readOnly: true,
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_month),
                labelText: "Plese Select Date",
              ),
              onTap: () async {
                DateTime? pickeddate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1947),
                    lastDate: DateTime(3025));
                if (pickeddate != null) {
                  print(pickeddate);
                  String formatteddate =
                      DateFormat("dd-MMM-yy-EEEE").format(pickeddate);
                  print(formatteddate);
                  setState(() {
                    dateinput.text = formatteddate;
                  });
                } else {
                  print("date not selected");
                }
              },
            ),
          )
        ],
      ),
    ));
  }
}
