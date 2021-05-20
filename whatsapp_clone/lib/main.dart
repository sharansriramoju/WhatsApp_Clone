import 'package:flutter/material.dart';
import 'package:whatsapp_clone/menu%20items/newbrodcast.dart';
import 'package:whatsapp_clone/menu%20items/newgroup.dart';
import 'package:whatsapp_clone/menu%20items/payments.dart';
import 'package:whatsapp_clone/menu%20items/settings.dart';
import 'package:whatsapp_clone/menu%20items/starredMessages.dart';
import 'package:whatsapp_clone/menu%20items/whatsappweb.dart';
import 'package:whatsapp_clone/screens/contact_list.dart';
import 'package:whatsapp_clone/tab%20items/whatsapp_call.dart';
import 'package:whatsapp_clone/tab%20items/whatsapp_chats.dart';
import 'package:whatsapp_clone/tab%20items/whatsapp_status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _selectedTab;
  List<Widget> _tabs = [
    Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: Text(
        "CHATS",
      ),
    ),
    Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: Text(
        "STATUS",
      ),
    ),
    Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: Text(
        "CALLS",
      ),
    ),
  ];
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabController);
  }

  void _handleTabController() {
    print("Previous Indexd: " + _tabController.previousIndex.toString());
    print("Current Indexd: " + _tabController.index.toString());
    if (_tabController.previousIndex - 2 != _tabController.index) {
      setState(() {
        _selectedTab = _tabController.index;
      });
    }
  }

  Widget myFloatingActionButton() {
    if (_tabController.index == 0) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactList(),
            ),
          );
        },
        child: Icon(
          Icons.message_rounded,
        ),
        backgroundColor: Color(0xff25D366),
      );
    } else if (_tabController.index == 1) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactList(),
            ),
          );
        },
        child: Icon(
          Icons.camera_alt,
        ),
        backgroundColor: Color(0xff25D366),
      );
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactList(),
            ),
          );
        },
        child: Icon(
          Icons.add_call,
        ),
        backgroundColor: Color(0xff25D366),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: myFloatingActionButton(),
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text("WhatsApp"),
        actions: [
          Container(
            child: Icon(
              Icons.search,
            ),
          ),
          PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewGroup())),
                      child: ListTile(
                        title: Text(
                          "New group",
                        ),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewBroadcast())),
                      child: ListTile(
                        title: Text(
                          "New broadcast",
                        ),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WhatsappWeb())),
                      child: ListTile(
                        title: Text(
                          "WhatsApp Web",
                        ),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StarredMessages())),
                      child: ListTile(
                        title: Text(
                          "Starred messages",
                        ),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Payments())),
                      child: ListTile(
                        title: Text(
                          "Payments",
                        ),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Settings())),
                      child: ListTile(
                        title: Text(
                          "Settings",
                        ),
                      ),
                    ),
                  ),
                ];
              })
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: _tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          WhatsAppChats(),
          WhatsAppStatus(),
          WhatsAppCall(),
        ],
      ),
    );
  }
}
