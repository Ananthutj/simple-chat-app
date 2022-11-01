// ignore_for_file: avoid_web_libraries_in_flutter, prefer_const_literals_to_create_immutables, unused_import, use_key_in_widget_constructors, prefer_const_constructors, avoid_print, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:my_app/homescreen/chatlist.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GetInTouch",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              print("Menu clicked");
            },
          ),
          backgroundColor: Colors.blueGrey,
          elevation: 8,
          // ignore: prefer_const_constructors
          title: Text(
            "GetInTouch",

            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  print("Search buton clicked");
                },
                icon: Icon(Icons.search)),
          ],
        ),
        body: ListView(
          children: [
            
            
            Chatlist(
              name: "Dilshan",
              time: "8:30am",
              message: "Fine...",
              profile: 'assets/avatar/3.webp',
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
            Chatlist(name: 'Rahul', time: '7:00pm', message: 'Hello,\nWhere are you now?', profile: 'assets/avatar/5.jpg'),
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
            Chatlist(
              name: "Rizwan",
              time: "1:30pm",
              message: "Nice to meet you...",
              profile: 'assets/avatar/2.webp',
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
            Chatlist(
              name: "Ravi Bishnoi",
              time: "12:13am",
              message: "Due to heavy rain,there won't be\nany classes today..",
              profile: 'assets/avatar/1.jpg',
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
            Chatlist(
              name: "Rajesh",
              time: "9:20pm",
              message: "I'll call you later",
              profile: 'assets/avatar/user2.jpg',
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
            Chatlist(
              name: "Suryakumar",
              time: "11:00am",
              message: "This needs to be changed",
              profile: 'assets/avatar/6.jpg',
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
            Chatlist(
              name: "Sunidhi",
              time: "7:30pm",
              message: "There might be a party tomorrow...",
              profile: 'assets/avatar/4.png',
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
          ],
        ),
        
      ),
    );
}
}
