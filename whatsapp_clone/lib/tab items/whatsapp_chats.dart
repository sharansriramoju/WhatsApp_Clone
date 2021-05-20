import 'package:flutter/material.dart';

import 'package:whatsapp_clone/classes/chats.dart';

import 'package:whatsapp_clone/screens/conversation.dart';

class WhatsAppChats extends StatefulWidget {
  @override
  _WhatsAppChatsState createState() => _WhatsAppChatsState();
}

class _WhatsAppChatsState extends State<WhatsAppChats> {
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

  List<String> message = [
    "Complete the exercise",
    "How are you?",
    "GTA 5 aadudama?",
    "Reyy, Netflix account details pampu ra",
    "Repu kalludamma?",
    "Rey repu morning badminton aadudama?",
    "Arey nenu warangal veltunna ra. So badminton not possible. Ellundi vasta",
    "Tondara intiki ra",
    "Market nunchi bananas tey",
    "Joy Sir farwell chala baga unde. I miss those moments"
  ];

  List<String> date = [
    "Today",
    "Today",
    "Yesterday",
    "17/01/20",
    "17/01/20",
    "17/01/20",
    "16/01/20",
    "09/01/20",
    "31/12/19",
    "31/12/19",
  ];

  List<String> dp = [
    "https://images.pexels.com/photos/245207/pexels-photo-245207.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/3136161/pexels-photo-3136161.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/2586354/pexels-photo-2586354.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/1253664/pexels-photo-1253664.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/4541396/pexels-photo-4541396.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/5528835/pexels-photo-5528835.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/1561020/pexels-photo-1561020.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/3136161/pexels-photo-3136161.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ];
  List<Chats> contact1 = [
    Chats(
      "sharan",
      "https://images.pexels.com/photos/245207/pexels-photo-245207.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "complete the exercise",
      "today",
      [
        "hello",
        "hii",
        "how are you",
        "fine",
        "complete the exercise",
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
        shrinkWrap: true,
        itemCount: contact1.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(height * 0.02),
            height: height * 0.06,
            width: width,
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Conversation(
                    username: contact1[index].userName,
                    dp: contact1[index].profileImage,
                    message: contact1[index].lastMessage,
                    conversation: contact1[index].conversation,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: width * 0.075,
                    backgroundImage: NetworkImage(
                      contact1[index].profileImage,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width * 0.77,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              contact1[index].userName,
                              style: TextStyle(
                                fontSize: width * 0.04,
                              ),
                            ),
                            Text(
                              contact1[index].date,
                              style: TextStyle(
                                fontSize: width * 0.035,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          contact1[index].lastMessage,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: height * 0.02,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          );
        });
  }
}
