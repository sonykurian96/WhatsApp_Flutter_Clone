import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [ ListTile(
              leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.grey[350],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,5.5,0,0),
                child: Icon(Icons.person,size: 48,color: Colors.white,),
              ),
                ),
              title: Text("My status",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Tap to add status update"),
            ),
              Positioned(
                left: 45,
                top: 40,
                child: CircleAvatar(
                  radius: 10,
                    backgroundColor: Color(0xff25D366),
                    child: Icon(Icons.add,color: Colors.white,size: 20,)),
              ),
            ]
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.camera_alt),
    ),
    );
  }
}