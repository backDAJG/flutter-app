import 'package:flutter/material.dart';
import 'button_settings.dart';

class GradientProfile extends StatelessWidget {

  String title;

  GradientProfile(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(
        left: 20.0,
        bottom: 50.0
      ),
      height: 400.0,
      width: 1000,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
      ),
      child: Container(
        padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold
                ),
              ),
              ButtonSettings()
            ],
          ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}