import 'package:flutter/material.dart';
import 'package:flutter_application_day1/home_page.dart';
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
        primarySwatch: Colors.teal,
        // fontFamily: GoogleFonts.poppins().fontFamily,
        
      ),

      darkTheme: ThemeData(
         brightness: Brightness.dark
      ),
    
      initialRoute: "/login",

      routes: {
      "/": (context) => HomePage(),
      "/login": (context) => Loginpage()
    },

    );
  }
}
