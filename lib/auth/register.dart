import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osaohia/auth/login.dart';

class RegiserScreen extends StatefulWidget {
  const RegiserScreen({super.key});

  @override
  State<RegiserScreen> createState() => _RegiserScreenState();
}

class _RegiserScreenState extends State<RegiserScreen> {
  final registerKey = GlobalKey<FormState>();

  TextEditingController storenameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  bool showPassword = false;
  bool isLoading = false;

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
          color: Color(0xFFA0A0A0),
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
          color: Color(0xFFA0A0A0),
          size: 25.0,
        ),
      );
    }
  }

  signUp() async {
    setState(() {
      isLoading = true;
    });
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);

      final user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        await user.updateDisplayName(storenameController.text);

        // add registered user to then store

        await FirebaseFirestore.instance
            .collection("stores")
            .doc(emailController.text)
            .set({
          "name": storenameController.text,
          "email": emailController.text,
          "phone": phoneController.text,
        }).then((documentSnapshot) {
          setState(() {
            emailController.text = "";
            storenameController.text = "";
            passwordController.text = "";
            phoneController.text = "";
            isLoading = false;
          });

          print("Store Created Successfully");

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "Your store has been created successfully, Kindly Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              backgroundColor: Colors.green,
            ),
          );

          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return LoginScreen();
          }));
        });
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == "weak-password") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Pasword is too weak!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.red,
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Email Already Exist, use different mail",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF48A0F2),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Launch into Success with Osoahia",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Ready, Set, Go!",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Form(
                  key: registerKey,
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
                              borderSide: BorderSide.none,
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
                              borderSide: BorderSide.none,
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
                              borderSide: BorderSide.none,
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
                              borderSide: BorderSide.none,
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
                          height: 15.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginScreen();
                            }));
                          },
                          child: Text(
                            "Already a seller? Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (registerKey.currentState!.validate()) {
                              // print("Submitted Login Successful");

                              // Navigator.pushReplacement(context,
                              //     MaterialPageRoute(builder: (context) {
                              //   return Home();
                              // }));

                              signUp();
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
                              "Create Store",
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
