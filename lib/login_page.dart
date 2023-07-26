import 'package:flutter/material.dart';
import 'package:flutter_application_day1/utilties/routs.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  final _goToHome = GlobalKey<FormState>();
 

goToHome(BuildContext context) async{
    if (_goToHome.currentState?.validate()==true) {
      // await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRouts.homeRoute);
      }
}

  @override


  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/news.png",
              fit: BoxFit.contain,
              width: 200,
              height: 200,
            ),
            Text(
              "WELLCOME $name ",
              style: TextStyle(
                fontSize: 30,
                color: Colors.indigo,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.ubuntu().fontFamily,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 0),
              child: Form(
                key: _goToHome,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "User Name", hintText: "Enter User Name"),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                        },

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your User Name";
                          }
                          return null;
                        }
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password", hintText: "Enter Password"),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Password";
                          } else if (value.length < 8) {
                            return "Passswor have must atleast 8 Digits";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                        onPressed: () => goToHome(context),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                            textStyle: TextStyle(
                              fontFamily: GoogleFonts.ubuntu().fontFamily,
                            )),
                        child: Text("LOGIN"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
