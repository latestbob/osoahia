import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osaohia/dashboard/new_product.dart';
import 'package:osaohia/dashboard/productdetails.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: "Search Product",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NewProducts();
            }));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add New Product",
                style: GoogleFonts.montserrat(
                  color: Color(0xFF48A0F2),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.add,
                size: 20.0,
                color: Color(0xFF48A0F2),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProductDetails();
            }));
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
                color: Color(0xFFE7F3FF),
              ),
              child: ListTile(
                leading: Image(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      "https://res.cloudinary.com/edifice-solutions/image/upload/v1691159975/twemoji_womans-clothes_dk99sv.png"),
                ),
                title: Text(
                  "Product Name",
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF48A0F2),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Product Name",
                  style: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Text(
                  "20",
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF48A0F2),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
              color: Color(0xFFE7F3FF),
            ),
            child: ListTile(
              leading: Image(
                fit: BoxFit.contain,
                image: NetworkImage(
                    "https://res.cloudinary.com/edifice-solutions/image/upload/v1691159975/twemoji_womans-clothes_dk99sv.png"),
              ),
              title: Text(
                "Product Name",
                style: GoogleFonts.montserrat(
                  color: Color(0xFF48A0F2),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "Product Name",
                style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                "20",
                style: GoogleFonts.montserrat(
                  color: Color(0xFF48A0F2),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
