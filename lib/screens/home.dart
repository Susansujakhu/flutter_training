import 'package:flutter/material.dart';
import 'package:settings_ui/screens/settings.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Root Page"),
      ),
      body: Column(
        children: [
          IconButton(
            color: Colors.blue,
            onPressed: () async {
              var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(
                      AppBarTitle: "Settings",
                    ),
                  ));
              print(result);
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
