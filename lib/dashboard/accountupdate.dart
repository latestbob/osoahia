import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountUpdate extends StatefulWidget {
  const AccountUpdate({super.key});

  @override
  State<AccountUpdate> createState() => _AccountUpdateState();
}

class _AccountUpdateState extends State<AccountUpdate> {
  final formKey = GlobalKey<FormState>();

  TextEditingController storenameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  bool showPassword = false;

  bool checkvalue = false;

  showIcon() {
    if (showPassword == true) {
      return GestureDetector(
        onTap: () {
          setState(() {
            showPassword = !showPassword;
          });
        },
        child: Icon(
          Icons.visibility,
          size: 25.0,
          color: Colors.white,
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          setState(() {
            showPassword = !showPassword;
          });
        },
        child: Icon(
          Icons.visibility_off,
          color: Colors.white,
          size: 25.0,
        ),
      );
    }
  }

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
          SizedBox(
            height: 15.0,
          ),
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: storenameController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.store,
                        size: 30.0,
                        color: Color(
                          0xFFA0A0A0,
                        ),
                      ),
                      hintText: "Store Name",
                      hintStyle: TextStyle(
                        color: Color(0xFFA0A0A0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF48A0F2),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Store Name is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        size: 30.0,
                        color: Color(
                          0xFFA0A0A0,
                        ),
                      ),
                      hintText: "Email Address",
                      hintStyle: TextStyle(
                        color: Color(0xFFA0A0A0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF48A0F2),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email Address is required";
                      } else if (!value.contains("@")) {
                        return "Invalid Email address, @ is required";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: passwordController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 30.0,
                        color: Color(
                          0xFFA0A0A0,
                        ),
                      ),
                      suffixIcon: showIcon(),
                      hintText: "Secured Password",
                      hintStyle: TextStyle(
                        color: Color(0xFFA0A0A0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF48A0F2),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    obscureText: showPassword ? false : true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is required";
                      } else if (value.length < 8) {
                        return "Password should be up to 8 characters";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        size: 30.0,
                        color: Color(
                          0xFFA0A0A0,
                        ),
                      ),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                        color: Color(0xFFA0A0A0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF48A0F2),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone Number is required";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        // print("Submitted Login Successful");

                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return Home();
                        // }));
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFA500),
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                      child: Text(
                        "Update Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
