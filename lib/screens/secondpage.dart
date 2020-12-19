import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
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
              Navigator.pushNamed(context, "/thirdPage");
            },
            child: Text("Goto 3rd Page"),
          )
        ],
      ),
    );
  }
}
