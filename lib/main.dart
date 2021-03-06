import 'package:flutter/material.dart';
import 'package:mini_whatsapp/calls.dart';
import 'package:mini_whatsapp/camera.dart';
import 'package:mini_whatsapp/chats.dart';
import 'package:mini_whatsapp/status.dart';

void main() => runApp(MaterialApp(
  home: MainScreen(),
  debugShowCheckedModeBanner: false,
));

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(

        appBar: AppBar(

          actions: [

            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    print("tune search bar pe dabaya");
                  },
                  child: Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )
                ),

                PopupMenuButton<String>(
                  itemBuilder: (BuildContext context){
                    return [
                      PopupMenuItem(child: Text("New Group"+"\t"*2)),
                      PopupMenuItem(child: Text("New broadcast"+"\t"*2)),
                      PopupMenuItem(child: Text("WhatsApp Web"+"\t"*2)),
                      PopupMenuItem(child: Text("Starred messages"+"\t"*2)),
                      PopupMenuItem(child: Text("Payments"+"\t"*2)),
                      PopupMenuItem(child: Text("Settings"+"\t"*2)),
                    ];
                  }
                  ),


                ],
           
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              Container(
                  width: 10,
                  child: Tab(
                      icon: Icon(Icons.camera_alt_rounded)
                  )
              ),
              Container(width: 90, child: Tab(text: "CHATS")),
              Container(width: 90, child: Tab(text: "STATUS")),
              Container(width: 90, child: Tab(text: "CALLS"))
            ],
          ),
          title: Text("WhatsApp"),
          backgroundColor: Color(0xFF075e54),
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            Chat(),
            Status(),
            Call(),
          ],
        ),
      ),
    );
  }
}

Widget setupAlertDialoadContainer() {
  return Container(
    height: 340.0, // Change as per your requirement
    width: 50.0, // Change as per your requirement
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTile(
              title: Text('New group'),
            ),
            ListTile(
              title: Text('New broadcast'),
            ),
            ListTile(
              title: Text('WhatsApp Web'),
            ),
            ListTile(
              title: Text('Starred messages'),
            ),
            ListTile(
              title: Text('Payments'),
            ),
            ListTile(
              title: Text('Settings'),
            ),
          ],
        );
      },
    ),
  );
}
