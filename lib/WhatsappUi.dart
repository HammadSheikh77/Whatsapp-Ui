// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show AppBar, BuildContext, CircleAvatar, Color, Colors, DefaultTabController, Divider, FloatingActionButton, Icon, Icons, ListTile, PopupMenuButton, PopupMenuItem, Scaffold, StatelessWidget, Tab, TabBar, TabBarView, Text, Widget;
import 'package:whatsapp_ui/ChatModel.dart';
import 'package:whatsapp_ui/UpdatedScreen.dart';

class WhatsApp extends StatelessWidget {
   WhatsApp({super.key});
  final mystyle =TextStyle(fontSize: 40);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF128c7e),
            title: Text(
              'WhatsApp',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.camera_alt,color: Colors.white,),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search_rounded,color: Colors.white,),
              ),
              PopupMenuButton(
                iconColor: Colors.white,
                itemBuilder: (context){
                return [
                  PopupMenuItem(child: Text('New group')),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Starrd massages')),
                  PopupMenuItem(child: Text('Settings')),
                ];
              })
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(
                    Icons.group_add,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    'Chats',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Updates',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Calls',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFF128c7e),
            onPressed: () {},
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          body: Container(
            child: TabBarView(children: [
              Center(child: Text('Groups',style: mystyle)),
              ListView.separated(           //Chats
                itemCount : ChatList.length,
                itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(ChatList[index].profilePics),
                  ),
                  title: Text(ChatList[index].title),
                  subtitle: Text(ChatList[index].massages),
                  trailing: Text(ChatList[index].time),
                );
              }, 
              separatorBuilder: (context, index) {
                return Divider();
              }, ),
              MyStatus(),
              ListView.separated(         //Calls
                itemCount : ChatList.length,
                itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(ChatList[index].profilePics),
                  ),
                  title: Text(ChatList[index].title),
                  subtitle: Row(
                    children: [Icon(Icons.arrow_outward,color: Colors.green,),
                    SizedBox(width: 5,),
                    Text('July 10, 9;30')],
                  ),
                  trailing: Icon(Icons.call),
                );
              }, 
              separatorBuilder: (context, index) {
                return Divider();
              }, ),
            ]),),
        ),
      ),
    );
  }
}
