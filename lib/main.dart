import 'package:flutter/material.dart';
import 'package:mini_whatsapp/camera.dart';
import 'package:mini_whatsapp/chats.dart';

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
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("First Item"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Second Item"),
                            value: 2,
                          ),
                          DropdownMenuItem(child: Text("Third Item"), value: 3),
                          DropdownMenuItem(child: Text("Fourth Item"), value: 4)
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        });
                    print("ha kaam kar raha hau");
                  },
                  child: Icon(Icons.more_vert),
                )),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              Container(
                  width: 13,
                  child: Tab(
                      icon: Icon(Icons.camera_alt_rounded))),
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
            Center(child: Text("mai status wala")),
            Center(child: Text("mai call karne wala")),
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
