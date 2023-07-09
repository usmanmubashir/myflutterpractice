import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var av = "Only";
    return Scaffold(
      appBar: AppBar(
        title: Text("Allah"),
      ),

      drawer: Drawer(child: Center(child: Text("Allah")),),

      body: Center(
        child: Container(
          child: Text("Allah is the $av Greater"),
        ),
      ),
    );
  }
}
