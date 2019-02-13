import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/tabPages/tab_calls.dart';
import 'package:flutter_whatsapp/tabPages/tab_camera.dart';
import 'package:flutter_whatsapp/tabPages/tab_chats.dart';
import 'package:flutter_whatsapp/tabPages/tab_status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =new TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(text: "CHATS"),
              new Tab(text: "STATUS"),
              new Tab(text: "CALLS",)
            ]
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new TabCamera(),
            new TabChats(),
            new TabStatus(),
            new TabCalls(),

          ]),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(Icons.message, color: Colors.white),
          onPressed: ()=> print("open Chats"),
      ),
    );

  }
}
