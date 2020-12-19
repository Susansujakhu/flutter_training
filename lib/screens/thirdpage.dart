import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Goto 1st Page"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/secondPage");
            },
            child: Text("Goto 2nd Page"),
          )
        ],
      ),
    );
  }
}
