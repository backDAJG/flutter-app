import 'package:flutter/material.dart';
import 'card_image_profile.dart';

class CardImageProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 300.0
      ),
      child: ListView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        children: [
          CardImageProfile("assets/img/image-placeholder.jpg", "Title 1", "Description 1", "Streps 123,123,123"),
          CardImageProfile("assets/img/image-placeholder.jpg", "Title 2", "Description 2", "Streps 123,123,123"),
          CardImageProfile("assets/img/image-placeholder.jpg", "Title 3", "Description 3", "Streps 123,123,123"),
        ],
      ),
    );
  }

}