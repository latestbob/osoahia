import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osaohia/customwidgets/product_details.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
          Container(
            width: double.infinity,
            height: 150.0,
            child: Image(
              fit: BoxFit.contain,
              image: NetworkImage(
                  "https://res.cloudinary.com/edifice-solutions/image/upload/v1691159975/twemoji_womans-clothes_dk99sv.png"),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Change Image",
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
          ProductMoreDetails(),
        ],
      ),
    );
  }
}
