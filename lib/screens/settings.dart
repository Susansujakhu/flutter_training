import 'package:flutter/material.dart';
import 'package:settings_ui/screens/my_settings_tile.dart';

class Settings extends StatelessWidget {
  double height, width;
  String AppBarTitle;
  Settings({@required this.AppBarTitle});
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(context),
      body: _body(),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
          color: Colors.blue,
          onPressed: () {
            Navigator.pop(context, "I am from settings");
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          )),
      backgroundColor: Colors.grey.shade200,
      //title: Text(AppBarTitle),
      title: _mySearchBar(),
    );
  }

  Widget _mySearchBar() {
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: Colors.grey));
    return SizedBox(
      height: height * .06,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            hintText: "Search " + AppBarTitle,
            enabled: true,
            filled: true,
            fillColor: Colors.white,
            focusedBorder: border,
            enabledBorder: border),
      ),
    );
  }

  Widget _body() {
    return ListView(
      children: [
        MySettingsTile(
          tileWidth: width,
          tileHeight: height * .1,
          title: "Network & Internet",
          subtitle: "Wifi, Mobilem data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        ),
        MySettingsTile(
          tileWidth: width,
          tileHeight: height * .1,
          title: "Connected Devices",
          subtitle: "Bluetooth, NFC, Cast",
          iconData: Icons.devices,
          iconBackgroundColor: Colors.green.shade700,
        ),
        MySettingsTile(
          tileWidth: width,
          tileHeight: height * .1,
          title: "More Settings",
          subtitle: "Wifi, Mobilem data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        ),
        MySettingsTile(
          tileWidth: width,
          tileHeight: height * .1,
          title: "Network & Internet",
          subtitle: "Wifi, Mobilem data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        ),
        MySettingsTile(
          tileWidth: width,
          tileHeight: height * .1,
          title: "Network & Internet",
          subtitle: "Wifi, Mobilem data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        ),
        MySettingsTile(
          tileWidth: width,
          tileHeight: height * .1,
          title: "Network & Internet",
          subtitle: "Wifi, Mobilem data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        ),
        MySettingsTile(
          tileWidth: width,
          tileHeight: height * .1,
          title: "Network & Internet",
          subtitle: "Wifi, Mobilem data usage & hotspot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        )
      ],
    );
  }
}
