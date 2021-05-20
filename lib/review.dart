import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage;
  String name;
  String details;
  String comment;

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container(
      margin: EdgeInsets.only(
          //top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 20.0,
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          //top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 20.0,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
          //top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 20.0,
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          top: 5.0,
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfoStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Color(0xFFa3a5a7)
            ),
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border
          ],
        )
      ],
    );


    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        bottom: 5.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfoStars,
        userComment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}