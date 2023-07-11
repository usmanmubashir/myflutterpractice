import 'package:flutter/material.dart';



class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
    child: Center(child: Text("Login Page",style: TextStyle(
      fontSize: 40.0,
      color: Color(0xFF0081FF),
      fontFamily: 'notoSansCondensed',
      fontWeight: FontWeight.bold

    ),),),
    );
  }
}