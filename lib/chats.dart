import 'package:flutter/material.dart';
import 'package:mini_whatsapp/contact_select.dart';
import 'dart:math' as math;

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/contact_start.jpeg"),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.message),
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => SelectContact(),
                // settings: RouteSettings(
                //   arguments: videoList[index],
                // ),
              )
          );
        },
      ),
    );
  }
}