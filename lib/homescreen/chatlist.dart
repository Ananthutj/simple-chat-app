// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_app/homescreen/chatscreen.dart';


class Chatlist extends StatelessWidget {
  final String name;
  final String time;
  final String message;
  final String profile;

  Chatlist({
    required this.name,
    required this.time,
    required this.message,
    required this.profile,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (_)=> ChatScreen(),)),
      child: Container(
        height: 70,
        margin: EdgeInsets.only(top: 15),
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right:50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5, left: 12),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.orange,
                          width: 2,
                        )),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage(profile),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(right: 28,top: 10),
                        child: Text(
                          name,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height:30,
                        child: Text(
                          message,
                          
                          style: TextStyle(
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis,
                            
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      
                    ],
                  ),
                  
                ],
              ),
              
            ),
            
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(time),
                    ),
            )
          ],
          
        ),
      ),
    );
  }
}
