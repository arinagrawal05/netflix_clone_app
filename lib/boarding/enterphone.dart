// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nflix_app/boarding/getstarted.dart';
import 'package:nflix_app/Shared/colors.dart';
import 'package:nflix_app/enterdetails.dart';

class EnterPhone extends StatefulWidget {
  @override
  _EnterPhoneState createState() => _EnterPhoneState();
}

class _EnterPhoneState extends State<EnterPhone> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showSnackMessage(String message) {
    // _scaffoldKey.currentState.showSnackBar(SnackBar(
    //   content: Text(message),
    // ));
    print(message);
  }

  TextEditingController _phoneController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalatte.themeColor,
        key: _scaffoldKey,
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // FirebaseFirestore.instance.collection("Users").add({
                        //   "imgurl": "userimg",
                        // });
                      },
                      child: Container(
                          child: Image.asset("assets/images/netflix_logo.png")),
                    ),
                    input(_phoneController, "Email or phone Number", 1),
                    input(_pwdController, "Password", 1),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            GetStartedScreen()));
                              },
                              child: Text("New to Netflix? Sign up Now",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RefundScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text("Help with your payment",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                ColorPalatte.primarycolor, // foreground
                          ),
                          onPressed: () {
                            if (_phoneController.text == "") {
                              _showSnackMessage("Please Fill Your Name");
                            } else if (_pwdController.text == "") {
                              _showSnackMessage("Username can't be empty");
                            } else {
                              // FirebaseFirestore.instance
                              //     .collection("Users")
                              //     .add({
                              //   "imgurl".toString(): "userimg".toString(),
                              // }).then((value) {
                              //   // Nav igator.pushReplacement(
                              //   //     context,
                              //   //     MaterialPageRoute(
                              //   //         builder: (context) => RefundScreen()));
                              // });
                            }

                            // },
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: ColorPalatte.textthemeColor,
                                fontWeight: FontWeight.w500,
                                // fontSize: 13,
                              ),
                            ),

                            // color: Colors.blue,
                          )),
                    )
                  ],
                ))));
  }

  Widget input(TextEditingController controller, name, int lines) {
    return Container(
      decoration: BoxDecoration(
          color: ColorPalatte.themeshadeColor,
          borderRadius: BorderRadius.circular(6)),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextField(
        textInputAction: TextInputAction.done,
        autofocus: false,
        maxLines: lines,
        controller: controller,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
            hintText: name,
            hintStyle: GoogleFonts.montserrat(
                color: Colors.grey.shade400,
                fontSize: 15,
                fontWeight: FontWeight.w400),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6))),
        style: GoogleFonts.montserrat(
            color: ColorPalatte.textthemeColor,
            fontWeight: FontWeight.w400,
            fontSize: 17),
      ),
    );
  }
}
