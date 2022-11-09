// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tugas_lab_pam/RecycleView.dart';
import 'package:tugas_lab_pam/about.dart';
import 'package:tugas_lab_pam/list.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins-Regular'), home: MyMainPage());
  }
}

class MyMainPage extends StatelessWidget {
  const MyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Work"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: ElevatedButton(
              child: Text("About Us"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUs()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: ElevatedButton(
              child:Text("Input/OutPut"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                  );
              },
               ),
            //child: Text('Input/Output'),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: ElevatedButton(
              child:Text("ListView"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DaftarList()),
                  );
              },
               ),
            //child: Text("Model"),
          ),
        ],
      ),
    );
  }
}
