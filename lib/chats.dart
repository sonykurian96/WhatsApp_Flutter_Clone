import 'package:flutter/material.dart';
import 'package:mini_whatsapp/chatModel.dart';
import 'package:mini_whatsapp/contact_select.dart';
import 'dart:math' as math;

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(context,
           MaterialPageRoute(builder: (context) => Pasha_ka_chat()));
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.grey[350],
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5.5, 0, 0),
              child: Icon(
                Icons.person,
                size: 48,
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            "Sony",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text("6:02 pm"),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.check,
                size: 19,
                color: Colors.grey,
              ),
              SizedBox(
                width: 2,
              ),
              Text("Ek sadaran banda"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.message),
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SelectContact(),
                // settings: RouteSettings(
                //   arguments: videoList[index],
                // ),
              ));
        },
      ),
    );
  }
}
