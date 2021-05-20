import 'package:flutter/material.dart';
import 'gradient_profile.dart';
import 'profile_data.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Stack(
      children: <Widget>[
        GradientProfile("Profile"),
        ListView(
          children: [
            ProfileData("assets/img/placeholder-user.jpg", "Alejandro", "jerez1.2.3.102107@gmail.com")
          ],
        )
      ],
    );
  }
  
}