import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProducts extends StatefulWidget {
  const NewProducts({super.key});

  @override
  State<NewProducts> createState() => _NewProductsState();
}

class _NewProductsState extends State<NewProducts> {
  final newKey = GlobalKey<FormState>();

  String categoryValue = '';
  String subcategoryValue = '';

  String colorDropdownValue = '';

  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  TextEditingController quantityController = TextEditingController();
  TextEditingController stockLimitController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

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
          Form(
            key: newKey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  DropdownButtonFormField(
                      alignment: Alignment.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                        15.0,
                      ))),
                      value: categoryValue,
                      items: [
                        DropdownMenuItem(
                          value: "",
                          child: Text(
                            "Select Category",
                          ),
                        ),
                        DropdownMenuItem(
                          value: "Vehicle",
                          child: Text(
                            "Vehicle",
                          ),
                        ),
                        DropdownMenuItem(
                          value: "Fashion",
                          child: Text(
                            "Fashion",
                          ),
                        ),
                      ],
                      validator: (value) {
                        if (value == '' || value == null) {
                          return "Please Select a Category";
                        }
                        return null;
                      },
                      onChanged: (newvalue) {
                        setState(() {
                          categoryValue = newvalue!;
                        });
                      }),
                  SizedBox(
                    height: 15.0,
                  ),
                  DropdownButtonFormField(
                      alignment: Alignment.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                        15.0,
                      ))),
                      value: subcategoryValue,
                      items: [
                        DropdownMenuItem(
                          value: "",
                          child: Text(
                            "Sub Category",
                          ),
                        ),
                        DropdownMenuItem(
                          value: "Vehicle",
                          child: Text(
                            "Vehicle",
                          ),
                        ),
                        DropdownMenuItem(
                          value: "Fashion",
                          child: Text(
                            "Fashion",
                          ),
                        ),
                      ],
                      validator: (value) {
                        if (value == '' || value == null) {
                          return "Please Select a Subcategory";
                        }
                        return null;
                      },
                      onChanged: (newvalue) {
                        setState(() {
                          subcategoryValue = newvalue!;
                        });
                      }),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: titleController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: "Product Title",
                      hintStyle: TextStyle(),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Product is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: priceController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: "Product Unit Price",
                      hintStyle: TextStyle(),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Product Price is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //this is a commit
                        Text(
                          "ADD IMAGE",
                          style: GoogleFonts.montserrat(
                            color: Color(
                              0xFF48A0F2,
                            ),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Supported format are png, jpeg, jpg",
                          style: GoogleFonts.montserrat(
                            color: Color.fromARGB(255, 145, 145, 145),
                            fontSize: 11.0,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: quantityController,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            hintText: "Quantity",
                            hintStyle: TextStyle(),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                15.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Product Quantity is required";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: stockLimitController,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            hintText: "Stock Limit",
                            hintStyle: TextStyle(),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                15.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Product Stock Limit is required";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    maxLines: 4,
                    keyboardType: TextInputType.number,
                    controller: descriptionController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter product description",
                      hintStyle: TextStyle(),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Product description is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  DropdownButtonFormField(
                      value: colorDropdownValue,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                        ),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text("Select Color"),
                          value: "",
                        ),
                        DropdownMenuItem(
                          child: Text("Red"),
                          value: "Red",
                        ),
                        DropdownMenuItem(
                          child: Text("Blue"),
                          value: "Blue",
                        ),
                        DropdownMenuItem(
                          child: Text("Yellow"),
                          value: "Yellow",
                        ),
                      ],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Color must be selected";
                        }

                        return null;
                      },
                      onChanged: (newValue) {
                        setState(() {
                          colorDropdownValue = newValue!;
                          print(colorDropdownValue);
                        });

                        print(colorDropdownValue);
                      }),
                  SizedBox(
                    height: 30.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (newKey.currentState!.validate()) {
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
                        "Add New Product",
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
