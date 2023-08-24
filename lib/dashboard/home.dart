import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:osaohia/dashboard/chat.dart';

import 'package:osaohia/dashboard/mainhome.dart';

import 'package:osaohia/dashboard/orders.dart';
import 'package:osaohia/dashboard/products.dart';
import 'package:osaohia/dashboard/settings.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  String formattedDate = '';

  int selectedIndex = 0;

  List<Widget> pages = [
    MainHome(),
    ProductScreen(),
    OrderScreen(),
    ChatScreen()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var now = DateTime.now();
    formattedDate = DateFormat('MMMM d, y', 'en_US').format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Store Name",
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              formattedDate,
              style: GoogleFonts.montserrat(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 13.0,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 30.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return StoreSettings();
                }));
              },
              child: Icon(
                Icons.store,
                size: 40.0,
                color: Color(0xFFFFA500),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF48A0F2),
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          // course
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Products',
          ),

          //Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Orders',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: 'Chats',
          ),
        ],
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}
