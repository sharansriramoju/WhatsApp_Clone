import 'dart:ui';

import 'package:flutter/material.dart';

class Conversation extends StatefulWidget {
  final String dp;
  final String username;
  final String message;
  final List<String> conversation;
  Conversation({
    Key key,
    @required this.dp,
    @required this.message,
    @required this.username,
    @required this.conversation,
  }) : super(key: key);

  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  List<String> username = [
    "Yashu",
    "Abhiram",
    "Sharan",
    "MahaLakshmi",
    "Sindhu Priya",
    "Madhava",
    "Mothe",
    "Dad",
    "Mom",
    "CCHS CBSE 2017 batch"
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                widget.dp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
            ),
            Text(
              widget.username,
            ),
          ],
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        backgroundColor: Color(0xff075E54),
        actions: [
          Icon(
            Icons.video_call,
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
          Icon(
            Icons.call,
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
          Icon(
            Icons.more_vert,
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/5528835/pexels-photo-5528835.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.conversation.length,
            itemBuilder: (context, index) {
              if (index % 2 == 0) {
                return Container(
                  width: width,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: width * 0.57,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.conversation[index],
                              style: TextStyle(
                                fontSize: width * 0.04,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "10:57 AM",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: width * 0.03,
                                  ),
                                ),
                                Icon(
                                  Icons.check,
                                  color: Colors.grey,
                                  size: width * 0.04,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Container(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffdcf8c6),
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: width * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.conversation[index],
                              style: TextStyle(
                                fontSize: width * 0.04,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "10:57 AM",
                                  style: TextStyle(
                                    fontSize: width * 0.03,
                                    color: Colors.grey,
                                  ),
                                ),
                                Icon(
                                  Icons.check,
                                  color: Colors.grey,
                                  size: width * 0.04,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }
}
