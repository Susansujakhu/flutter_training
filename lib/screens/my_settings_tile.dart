import "package:flutter/material.dart";

class MySettingsTile extends StatelessWidget {
  final IconData iconData;
  final Color iconBackgroundColor;
  final String title, subtitle;
  final double tileWidth, tileHeight;
  MySettingsTile(
      {@required this.tileWidth,
      @required this.tileHeight,
      @required this.title,
      @required this.subtitle,
      @required this.iconData,
      @required this.iconBackgroundColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      width: tileWidth,
      height: tileHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(1, 1),
              spreadRadius: 0.5,
              blurRadius: 0.8)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            _myIcon(),
            SizedBox(
              width: 20,
            ),
            _settingsMenu()
          ],
        ),
      ),
    );
  }

  Widget _myIcon() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: iconBackgroundColor, shape: BoxShape.circle),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }

  Widget _settingsMenu() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey.shade600),
        )
      ],
    );
  }
}
