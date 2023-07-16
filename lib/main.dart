import 'package:flutter/material.dart';
import 'package:flutter_application_day1/home_page.dart';
import 'package:flutter_application_day1/utilties/routs.dart';
import 'login_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,
      

      theme: ThemeData(
        primarySwatch: Colors.indigo,
        // fontFamily: GoogleFonts.poppins().fontFamily,
        
      ),

      darkTheme: ThemeData(
         brightness: Brightness.dark
      ),
    
      initialRoute: "/login",

      routes: {
      MyRouts.homeRoute: (context) => HomePage(),
      MyRouts.loginRoute: (context) => Loginpage()
    },

    );
  }
}
