import 'package:flutter/material.dart';
import 'button_custom.dart';

class FloatingActionButtonProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCustom(true, "Markdown", Icon(Icons.bookmark_border)),
            ButtonCustom(true, "TV", Icon(Icons.tv)),
            ButtonCustom(false, "Add", Icon(Icons.add)),
            ButtonCustom(true, "Email", Icon(Icons.email)),
            ButtonCustom(true, "People", Icon(Icons.person))
          ],
        )
      ],
    );
  }
}