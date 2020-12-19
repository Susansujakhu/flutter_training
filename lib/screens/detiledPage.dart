import 'package:flutter/material.dart';
import 'package:settings_ui/models/jsonPlaceholderModel.dart';

class DetailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    JsonPlaceholderModel model = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(model.id.toString()),
      ),
      body: Center(
        child: Text(model.body),
      ),
    );
  }
}
