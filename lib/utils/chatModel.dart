import 'package:flutter/material.dart';

class Pashakachat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: Text("Sony"),
        ),
        backgroundColor: Color(0xFF075e54),

        actions: [
          Icon(Icons.video_call),
          SizedBox(width: 20),
          Icon(Icons.call),
          SizedBox(width: 20),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }
}
