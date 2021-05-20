import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget {

  String pathImage;
  String titleImage;
  String descriptionImage;
  String streps;

  CardImageProfile(this.pathImage, this.titleImage, this.descriptionImage, this.streps);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final titleCard = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      child: Text(
        titleImage,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 15.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final descriptioCard = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      child: Text(
        descriptionImage,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 10.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );
    
    final stepsCard = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      child: Text(
        streps,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(232, 166, 90, 1),
          fontFamily: "Lato"
        ),
      ),
    );

    final card = Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          margin: EdgeInsets.only(
            top: 25
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(pathImage)
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0,7)
              )
            ]
          ),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            margin: EdgeInsets.only(
              top: 180.0,
              left: 40.0,
              right: 40.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleCard,
                descriptioCard,
                stepsCard
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15,
                  offset: Offset(0,7)
                )
              ]
            ),
          ),
        )
      ],
    );

    return Stack(
      alignment: Alignment(0.6, 1.1),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }

}