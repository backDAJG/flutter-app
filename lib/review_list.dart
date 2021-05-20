import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/placeholder-user.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/placeholder-user.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/placeholder-user.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
       ],
    );
  }

}