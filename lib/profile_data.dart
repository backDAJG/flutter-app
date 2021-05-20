import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileData extends StatelessWidget {

  String pathImage;
  String name;
  String email;

  ProfileData(this.pathImage, this.name, this.email);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userEmail = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 20.0
          ),
          child: Text(
            email,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7)
            ),
          ),
        )
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 100.0,
        left: 20.0,
        bottom: 5.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userEmail
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 125.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(pathImage)
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white,
            spreadRadius: 3
          )
        ]
      ),
    );

    return Row(
      children: [
        photo,
        userDetails
      ],
    );
  }

}