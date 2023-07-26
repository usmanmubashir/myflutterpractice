import 'package:flutter/material.dart';
import 'package:flutter_application_day1/utilties/routs.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool containerAnimation = false;
  bool containerAnimation1 = false;
  bool containerAnimation2 = false;

  // const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var ab = "A";

    return Scaffold(
      appBar: AppBar(
        // title: Text("Allah"),
        title: Text("MY APP"),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("ABC"),
              accountEmail: Text("johndoe@example.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                "assets/images/profile.jpg",
              )),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.indigo,
              ),
              title: Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, MyRouts.homeRoute);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.wallet,
                color: Colors.indigo,
              ),
              title: Text("Wallet"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.indigo,
              ),
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.indigo,
              ),
              title: Text("Logout"),
              onTap: () {},
            )
          ],
        ),
      ),

      // body: Center(
      //   child: Container(
      //     child: Text("Allah is the $ab Greater"),
      //   ),
      // ),



// indigo color container button

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: InkWell(
              onTap: () async {
                containerAnimation = true;
                await Navigator.pushNamed(context, MyRouts.nextPageRoute);
                setState(() {
                   containerAnimation = false;
                });
              },
              child: Container(
                width: double.infinity,
                height: 150,
                // color: Colors.indigo[50],
                decoration: BoxDecoration(
                    color: containerAnimation
                        ? Colors.indigo[100]
                        : Colors.indigo[50],
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),

// Amber color container button

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 0, 6.5, 0),
                  child: Material(
                    color: Colors.amber[200],
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      child: InkResponse(
                        containedInkWell: true,
                        highlightColor: Colors.amber[100],
                        splashColor: Colors.amber[100],
                        borderRadius: BorderRadius.circular(10),
                        highlightShape: BoxShape.rectangle,

                        // splashColor: Colors.blue,
                        onTap: () {
                          setState(() {
                            containerAnimation1 = true;
                          });
                        },
                        child: AnimatedContainer(
                          child: Text(""),
                          duration: Duration(seconds: 1),
                          height: 150,
                          // color: Colors.amber[100],
                        ),
                      ),
                    ),
                  ),
                )),

// green color container button

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(6.5, 0, 13, 0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          containerAnimation2 = true;
                        });
                      },
                      child: AnimatedContainer(
                        child: Center(
                            child: Text(
                          "",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF007D43),
                            // color: Colors.black,
                          ),
                        )),
                        duration: Duration(seconds: 1),
                        height: 150,
                        decoration: BoxDecoration(
                          color: containerAnimation2
                              ? Colors.green[100]
                              : Colors.green[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
