import 'package:flutter/material.dart';
import 'package:whatsapp_clone/classes/contact.dart';

import 'conversation.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<NewContact> contact = [
    NewContact(
      "Mothe Abhinay",
      "https://images.pexels.com/photos/3136161/pexels-photo-3136161.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "I Can Do This All Day...!!!",
    )
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          title: Text(
            "Select contact",
          ),
          actions: [
            Icon(
              Icons.search,
            ),
            Icon(
              Icons.more_vert,
            ),
          ],
          backgroundColor: Color(0xff075E54),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Conversation(
                            dp: contact[0].profilepic,
                            message: "ok",
                            username: contact[0].username,
                            conversation: []))),
                child: Container(
                  margin: EdgeInsets.all(width * 0.04),
                  width: width,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(contact[0].profilepic),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contact[0].username,
                            style: TextStyle(
                              fontSize: width * 0.04,
                            ),
                          ),
                          Text(
                            contact[0].status,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
