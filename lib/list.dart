// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // List untuk Dropdown
  final _monthsList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "september",
    "October",
    "November",
    "December"
  ];

  final _daysList = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  final _yearsList = [
    "2001",
    "2002",
    "2003",
    "2004",
    "2005",
    "2006",
    "2007",
    "2008",
  ];

  final _genderList = [
    "Male",
    "Female",
  ];

// Variabel untuk Checkbox
  bool? isCheckedEmployee = false;
  bool? isCheckedEmployer = false;

//Variabel radio button
  int? _radiovalue = 1;

//Variabel Switch
  bool switchState = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          /*     inputDecorationTheme: InputDecorationTheme(
         enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(width: 3.5, color: Colors.grey),
         ),
         border: UnderlineInputBorder(
           borderSide: BorderSide(width: 3.5, color: Colors.grey),
         ),
       )*/
          ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Nama",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 3.5, color: Colors.grey),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(width: 3.5, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Place of Birth",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 3.5, color: Colors.grey),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(width: 3.5, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                DropdownButton(
                  hint: Text("Day"),
                  items: _daysList
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {},
                ),
                SizedBox(
                  width: 15,
                ),
                DropdownButton(
                  hint: Text("Month"),
                  items: _monthsList
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {},
                ),
                SizedBox(
                  width: 15,
                ),
                DropdownButton(
                  hint: Text("Year"),
                  items: _yearsList
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {},
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButton(
              hint: Text("Gender"),
              isExpanded: true,
              items: _genderList
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (val) {},
            ),
            SizedBox(
              height: 15,
            ),
            Text("Checkbox"),
            Column(
              children: [
                CheckboxListTile(
                    title: Text("Employee"),
                    value: isCheckedEmployee,
                    onChanged: (newValue) {
                      setState(() {
                        isCheckedEmployee = newValue;
                      });
                    }),
                CheckboxListTile(
                    title: Text("Employer"),
                    value: isCheckedEmployer,
                    onChanged: (newValue) {
                      setState(() {
                        isCheckedEmployer = newValue;
                      });
                    }),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text("Radio Button"),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _radiovalue,
                  onChanged: (value) {
                    setState(() {
                      _radiovalue = value;
                    });
                  },
                ),
                SizedBox(width: 10.0),
                Text("radio 1"),
                Radio(
                  value: 2,
                  groupValue: _radiovalue,
                  onChanged: (value) {
                    setState(() {
                      _radiovalue = value;
                    });
                  },
                ),
                SizedBox(width: 10.0),
                Text("radio 2"),
                Radio(
                  value: 3,
                  groupValue: _radiovalue,
                  onChanged: (value) {
                    setState(() {
                      _radiovalue = value;
                    });
                  },
                ),
                SizedBox(width: 10.0),
                Text("radio 3"),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text("Switch"),
            Switch(
                value: switchState,
                onChanged: (bool s) {
                  setState(() {
                    switchState = s;
                  });
                }),
            SizedBox(
              height: 25,
            ),
            Text("TextArea"),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 10)),
              ),
              minLines: 6,
              maxLines: null,
              keyboardType: TextInputType.multiline,
            )
          ],
        ),
      ),
    );
  }
}
