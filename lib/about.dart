// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            }, // Handle your callback.
            splashColor: Colors.deepPurple.withOpacity(0.5),
            child: Ink(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/part_time_logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40),
            child: const Text(
              'About App',
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontWeight: FontWeight.w600,
                fontSize: 45,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: const Text(
                'Part Time adalah Aplikasi Platform Pencari kerja Paruh waktu Aplikasi kami bertujuan untuk mengatasi masalah susahnya mencari pekerjaan part-time di Indonesia.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15)),
          ),
          Container(
              padding: const EdgeInsets.only(top: 15),
              child: const Text(
                "Manfaat Aplikasi",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                ),
              )),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.post_add,
                      size: 50,
                    ),
                    const Text("Employer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        )),
                    const Text("Dapat post pekerjaan dengan mudah")
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.search,
                      size: 50,
                    ),
                    const Text("Employee",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        )),
                    const Text("Dapat mencari pekerjaan dengan mudah")
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
