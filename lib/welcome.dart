import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osaohia/auth/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 280.0,
              child: Image(
                fit: BoxFit.contain,
                image: NetworkImage(
                  "https://res.cloudinary.com/edifice-solutions/image/upload/v1690977741/OliviaWilson_1_1_dodaxh.png",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Unlock Your Property's Potential with Osoahia",
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Your Gateway to a Vibrant Marketplace!",
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFFA500),
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
                child: Text(
                  "Get Started",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
