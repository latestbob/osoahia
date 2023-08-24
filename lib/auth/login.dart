import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osaohia/auth/forgot.dart';
import 'package:osaohia/auth/register.dart';
import 'package:osaohia/dashboard/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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

  signIn() async {
    setState(() {
      isLoading = true;
    });
    try {
      final crendential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);

      final user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        setState(() {
          isLoading = false;
        });
        //print("You are Logged In successfully");

        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return DashBoardScreen();
        }));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'user-not-found') {
        // print("User not in our database");

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "User not found",
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
      } else if (e.code == 'wrong-password') {
        // print("Invalid Password");

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Invalid Password",
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
                  "Embark on Your Journey with Osoahia",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Let's Begin!",
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
                  key: loginKey,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
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
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ForgotScreen();
                            }));
                          },
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return RegiserScreen();
                            }));
                          },
                          child: Text(
                            "Not a seller yet ? Register",
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
                            if (loginKey.currentState!.validate()) {
                              // print("Submitted Login Successful");

                              // Navigator.pushReplacement(context,
                              //     MaterialPageRoute(builder: (context) {
                              //   return Home();
                              // }));

                              signIn();
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
                              "Start Selling",
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
