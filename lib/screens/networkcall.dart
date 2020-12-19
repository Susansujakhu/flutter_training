import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SimpleNetworkCall extends StatefulWidget {
  @override
  _SimpleNetworkCallState createState() => _SimpleNetworkCallState();
}

class _SimpleNetworkCallState extends State<SimpleNetworkCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network Call Examples "),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RaisedButton(
              onPressed: () {
                _fetchFromBackend();
              },
              child: Text("Fetch Data From Backends"),
            ),
            RaisedButton(
              onPressed: () {
                _button();
              },
              child: Text("Click Me"),
            )
          ],
        ),
      ),
    );
  }

  void _button() {
    print("i am clicekd");
  }

  void _fetchFromBackend() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    Response res = await get(url);
    print(res.body);
    print("HELO");
  }
}
