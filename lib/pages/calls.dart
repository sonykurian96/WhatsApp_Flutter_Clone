import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366), onPressed: () {  },
        child: Icon(Icons.add_call),
      ),
    );
  }
}
