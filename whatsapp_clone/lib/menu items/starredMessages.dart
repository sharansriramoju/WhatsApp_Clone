import 'package:flutter/material.dart';

class StarredMessages extends StatefulWidget {
  @override
  _StarredMessagesState createState() => _StarredMessagesState();
}

class _StarredMessagesState extends State<StarredMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starred Messages"),
      ),
    );
  }
}
