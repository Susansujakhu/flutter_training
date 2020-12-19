import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:settings_ui/models/jsonPlaceholderModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _enableLoading = LinearProgressIndicator();
  Widget _disableLoading = SizedBox();
  bool _isLoading = false;
  double height, width;
  List<Widget> _listItems = List();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("JSONPlaceholder"),
        actions: [_refreshButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _isLoading == true ? _enableLoading : _disableLoading,
            _myList(),
          ],
        ),
      ),
    );
  }

  Widget _refreshButton() {
    return IconButton(
      icon: Icon(Icons.refresh),
      onPressed: () {
        _fetch();
      },
    );
  }

  _fetch() async {
    _enableLoadingWidget();
    String url = "https://jsonplaceholder.typicode.com/posts";
    Response response = await get(url);
    //print(response.body);
    _responseDecoder(response.body);
    _disableLoadingWidget();
  }

  _enableLoadingWidget() {
    setState(() {
      _isLoading = true;
    });
  }

  _disableLoadingWidget() {
    setState(() {
      _isLoading = false;
    });
  }

  _responseDecoder(String body) {
    List list = jsonDecode(body);
    // print(list.length);
    // print(list[0]);
    List<Widget> tempList = List();
    for (int i = 0; i < list.length; i++) {
      Map eachElement = list[i];
      JsonPlaceholderModel model = JsonPlaceholderModel(
          title: eachElement['title'],
          body: eachElement['body'],
          userId: eachElement['userId'],
          id: eachElement['id']);
      // String title = eachElement['title'];
      // print(title);
      // Widget titleCard = _card(title);
      Widget titleCard = _card(model);
      tempList.add(titleCard);
    }
    _listItems = tempList;
    setState(() {});
  }

  Widget _myList() {
    return SizedBox(
        height: height * .85,
        width: width,
        child: ListView(
          children: _listItems,
        ));
  }

  Widget _card(JsonPlaceholderModel model) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: model);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(model.title),
        ),
      ),
    );
  }

  // Widget _card(String title) {
  //   return Card(
  //     child: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Text(title),
  //     ),
  //   );
  // }
}
