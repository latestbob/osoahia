import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductMoreDetails extends StatefulWidget {
  const ProductMoreDetails({super.key});

  @override
  State<ProductMoreDetails> createState() => _ProductMoreDetailsState();
}

class _ProductMoreDetailsState extends State<ProductMoreDetails> {
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
                    "Product Name",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.edit,
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
                    "Category",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.edit,
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
                    "Amount",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.edit,
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
                    "Quanitity",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.edit,
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
                    "Description",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.edit,
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
