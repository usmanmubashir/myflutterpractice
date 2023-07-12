import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
    child: Column(
      children: [
        Image.asset(
          "assets/images/login.png",
        fit: BoxFit.contain, 
        width: 200, 
        height: 200,
        ),


        Text(
          "Wellcome",
        style: TextStyle(
          fontSize: 35,
          color: Colors.teal,
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.ubuntu().fontFamily,
        ),
        ),
        

        SizedBox(
          height: 35,
        ),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 0),
          child: Column(
            children: [

          TextFormField(
            decoration: InputDecoration(
              labelText: "User Name",
              hintText: "Enter User Name"
            ),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter Password"
              ),
            ),
              ),


SizedBox(
  height: 25,
),
              ElevatedButton(onPressed: (){

              }, 

            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
              textStyle: TextStyle(
                fontFamily: GoogleFonts.ubuntu().fontFamily,
                
                
              )
            ),

              child: Text("LOGIN"))
            ],
        
        
          ),
        )

      ],
    ),
    );
  }
}