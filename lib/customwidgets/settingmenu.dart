import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osaohia/dashboard/accountupdate.dart';

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({super.key});

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 53.0,
            decoration: BoxDecoration(
              color: Color(0xFFE7F3FF),
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Store Name Here",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.store,
                    size: 30,
                    color: Color(0xFFFFA500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            width: double.infinity,
            height: 53.0,
            decoration: BoxDecoration(
              color: Color(0xFFE7F3FF),
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "storemail@gmail.com",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.email,
                    size: 30,
                    color: Color(0xFFFFA500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            width: double.infinity,
            height: 53.0,
            decoration: BoxDecoration(
              color: Color(0xFFE7F3FF),
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "09023172844",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.phone,
                    size: 30,
                    color: Color(0xFFFFA500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AccountUpdate();
              }));
            },
            child: Container(
              width: double.infinity,
              height: 53.0,
              decoration: BoxDecoration(
                color: Color(0xFFE7F3FF),
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Account Update",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                      color: Color(0xFFFFA500),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            width: double.infinity,
            height: 53.0,
            decoration: BoxDecoration(
              color: Color(0xFFE7F3FF),
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Invite Sellers",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.share,
                    size: 30,
                    color: Color(0xFFFFA500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
