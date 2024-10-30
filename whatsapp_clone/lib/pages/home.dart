import 'package:flutter/material.dart';
import 'ChatPage.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.teal,
          actions:  [
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  // ignore: avoid_print
                  onPressed: () => Scaffold.of(context).openDrawer(),
                );
              }
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white,),
              // ignore: avoid_print
              onPressed: () => print("hello"),
            ),
          ],
          bottom: const TabBar(tabs: 
            [
              Tab(text: "Calls", icon: Icon(Icons.phone, color: Colors.white,), ),
              Tab(text: "Chats", icon: Icon(Icons.message, color: Colors.white,),),
              Tab(text: "Contacts", icon: Icon(Icons.people, color: Colors.white,),),
            ],
            labelColor: Colors.white,
            indicatorColor: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
             Center(
               child: Text("CALLS TAB"),
             ),
             ChatPage(items: ["Hello World", "Greeting from Flutter", "Say hi to Dart"],),
             Center(
               child: Text("CONTACTS TAB"),
             ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.teal,
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  
}