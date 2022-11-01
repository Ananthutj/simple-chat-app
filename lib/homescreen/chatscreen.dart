// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, avoid_print, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextSpan(
                  text: 'Dilshan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              TextSpan(text: '\n'),
              TextSpan(text: 'Online'),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      print("..");
                    },
                    icon: Icon(Icons.more_horiz)),
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Hi,How are you?",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, left: 5),
                  child: Text(
                    "12:30pm",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 230, top: 20),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Flexible(
                    child: Text(
                      "Fine...",
                      maxLines: 100,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                    ),
                  )),
              Container(
                  padding: EdgeInsets.only(top: 30, left: 10),
                  child: Flexible(
                    child: Text(
                      "8:30am",
                      style: TextStyle(
                        fontSize: 12
                      ),
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.fade,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
