import 'package:flutter/material.dart';

class ButtonCustom extends StatefulWidget {
  bool mini;
  String tootltip;
  Widget icon;

  ButtonCustom(this.mini, this.tootltip, this.icon);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonCustom(mini, tootltip, icon);
  }

}

class _ButtonCustom extends State<ButtonCustom> {

  bool mini;
  String tooltip;
  Widget icon;

  _ButtonCustom(this.mini, this.tooltip, this.icon);

  void onPressed(tooltip) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(tooltip))
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 220.0
      ),
      child: FloatingActionButton(
        backgroundColor: Color(0xFFA7B2E3),
        foregroundColor: Color(0xFF584CD1),
        mini: mini,
        tooltip: tooltip,
        child: icon,
        onPressed: () {onPressed(tooltip);},
      ),
    );
  }

}