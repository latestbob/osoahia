import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: 170.0,
                height: 175.0,
                decoration: BoxDecoration(
                  color: Color(0xFFE7F3FF),
                  borderRadius: BorderRadius.circular(
                    24.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 10.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Color(
                          0xFF48A0F2,
                        ),
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                      Text(
                        "£ 400.00",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Total Sales",
                        style: GoogleFonts.montserrat(
                          color: Color(
                            0xFF48A0F2,
                          ),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 170.0,
                height: 175.0,
                decoration: BoxDecoration(
                  color: Color(0xFFE7F3FF),
                  borderRadius: BorderRadius.circular(
                    24.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 10.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.cancel,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                      Text(
                        "3",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Cancelled Order",
                        style: GoogleFonts.montserrat(
                          color: Colors.red,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: 170.0,
                height: 175.0,
                decoration: BoxDecoration(
                  color: Color(0xFFE7F3FF),
                  borderRadius: BorderRadius.circular(
                    24.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 10.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Color(
                          0xFF3DB550,
                        ),
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                      Text(
                        "26",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Sold Item",
                        style: GoogleFonts.montserrat(
                          color: Color(
                            0xFF3DB550,
                          ),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 170.0,
                height: 175.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFE7F3FF),
                  borderRadius: BorderRadius.circular(
                    24.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 10.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.orange,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                      Text(
                        "40",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Order Recieved",
                        style: GoogleFonts.montserrat(
                          color: Colors.orange,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Recent Orders",
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
