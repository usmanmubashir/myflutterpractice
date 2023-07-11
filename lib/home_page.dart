import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var ab = "A";

    return Scaffold(
      
      appBar: AppBar(
        title: Text("Allah"),
      ),

      drawer: Drawer(
        child: Center(
          child: Text("Container")),),

      body: Center(
        child: Container(
          child: Text("Allah is the $ab Greater"),
        ),
      ),
    );
  }
}
