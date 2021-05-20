import 'package:flutter/material.dart';

class ButtonSettings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonSettings();
  }

}

class _ButtonSettings extends State<ButtonSettings> {

  void onPressed() {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Settings!"))
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Color(0xFFA7B2E3),
      mini: true,
      tooltip: "Settings",
      child: Icon(
        Icons.settings,
        size: 15
      ),
      onPressed: onPressed
    );
  }
}