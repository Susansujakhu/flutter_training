import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_myWifiIcon()],
        title: Text("First1 Page"),
      ),
      body: Column(
        children: [
          //CircularProgressIndicator(),
          RaisedButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (context) {
              //     return SecondPage();
              //   },
              // ));
              Navigator.pushNamed(context, "/secondPage");
            },
            child: Text("Goto 2nds Page"),
          ),
          RaisedButton(
            onPressed: () async {
              await Navigator.pushNamed(context, "/thirdPage");
              await Future.delayed(Duration(seconds: 5));
              _displayDialog(context);
            },
            child: Text("Goto 3rd Page"),
          ),
          // _sliderbutton(context)
        ],
      ),
    );
  }

  Widget _sliderbutton(BuildContext context) {
    return SliderButton(
      action: () {
        _displayDialog(context);
      },
      icon: Text("Hi"),
    );
  }

  void _displayDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            backgroundColor: Colors.white,
            title: Text("Hello"),
          );
        });
  }

  Widget _myWifiIcon() {
    return ImageIcon(
        NetworkImage("https://image.flaticon.com/icons/png/512/88/88014.png"));
    // return ImageIcon(
    //   AssetImage("assets/wifi.png"),
    //   color: Colors.purple,
    // );
  }
}
