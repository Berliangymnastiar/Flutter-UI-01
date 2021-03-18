import 'package:demo_project_semudah/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color(0xFFAEE5FB),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black54,), onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LandingPage()
                              )
                          );
                        }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Image(
                      width: 300,
                      image: AssetImage("assets/login.png")
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                      transform: Matrix4.translationValues(0, 1, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                            child: TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.email, color: Colors.grey[400],),
                                hintText: "Email",
                                hintStyle: TextStyle(fontFamily: "Poppins")
                              ),
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.lock, color: Colors.grey[400],),
                                hintText: "Password",
                                hintStyle: TextStyle(fontFamily: "Poppins")
                              ),
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 3),
                            child: Material(
                              color: Color(0xFF6EA9F5),
                              elevation: 5,
                              borderRadius: BorderRadius.circular(30),
                              child: MaterialButton(
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignInPage()
                                      )
                                  );
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                ),
                              ),
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              margin: EdgeInsets.only(right: 6,top: 1),
                              child: Text("Forgot Password? / ", style: TextStyle(color: Colors.black54, fontFamily: "Poppins")),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              margin: EdgeInsets.only(top: 1),
                              child: Text("Create New Account ", style: TextStyle(color: Colors.blue[200], fontFamily: "Poppins")),
                            ),
                          ],
                        )
                        ],
                      ),
                    )
                ],
              )
            ),
          )
    );
  }
}
