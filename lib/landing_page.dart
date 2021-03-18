import 'package:demo_project_semudah/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFAEE5FB),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 80,
                left: 80,
                child: Text(
                  "Hai,",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold
                  ),
                )),
            Positioned(
                top: 140,
                left: 120,
                child: Text(
                  "Lads!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                )),
            Image(width: 300, image: AssetImage("assets/semudah.png")),
            Positioned(
                bottom: 150,
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
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "poppins"
                      ),
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
