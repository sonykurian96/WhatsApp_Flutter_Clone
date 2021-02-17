import 'package:flutter/material.dart';

class SelectContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select contact"),
        backgroundColor: Color(0xFF075e54),
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
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print("tune 3 dots pe click kiya");
                },
                child: Icon(
                    Icons.more_vert
                ),
              )
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("New group",style: TextStyle(
                fontWeight: FontWeight.bold
            ),
            ),
            leading: CircleAvatar(
                backgroundColor: Color(0xff25D366),
                child: Icon(Icons.group,
                  color: Colors.white,
                )
            ),
          ),
          ListTile(
            title: Text("New contact",style: TextStyle(
                fontWeight: FontWeight.bold
            ),
            ),
            leading: CircleAvatar(
                backgroundColor: Color(0xff25D366),
                child: Icon(Icons.person_add,
                  color: Colors.white,
                )
            ),
            trailing: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Icon(Icons.qr_code,
                color: Color(0xff25D366),
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}