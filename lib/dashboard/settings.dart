import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osaohia/customwidgets/settingmenu.dart';

class StoreSettings extends StatefulWidget {
  const StoreSettings({super.key});

  @override
  State<StoreSettings> createState() => _StoreSettingsState();
}

class _StoreSettingsState extends State<StoreSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Back",
              style: GoogleFonts.montserrat(
                color: Color(
                  0xFF48A0F2,
                ),
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 20.0,
          ),
          CircleAvatar(
            radius: 60.0,
            backgroundColor: Color(0xFFE7F3FF),
            child: Icon(
              Icons.store,
              color: Color(0xFFFFA500),
              size: 65.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Change Store Logo",
                style: GoogleFonts.montserrat(
                  color: Color(0xFF48A0F2),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.cloud_upload_rounded,
                size: 30.0,
                color: Color(0xFF48A0F2),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          SettingsMenu(),
        ],
      ),
    );
  }
}
