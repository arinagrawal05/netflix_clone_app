import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nflix_app/Shared/colors.dart';
import 'package:nflix_app/boarding/enterphone.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // primary: false,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 60,
                  child: Image.asset("assets/images/netflix_logo_n.png"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),

                  // padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Privacy",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: ColorPalatte.textthemeColor,
                          fontWeight: FontWeight.w500,
                          // fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EnterPhone()));
                        },
                        child: Text(
                          "Sign in",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: ColorPalatte.textthemeColor,
                            fontWeight: FontWeight.w500,
                            // fontSize: 13,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            // margin: edge,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.75,
            child: PageView(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/netflix_bg.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(
                        //     top: MediaQuery.of(context).size.height * 0.1),
                        height: MediaQuery.of(context).size.height * 0.75,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          // color: Colors.red
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xCC000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0xCC000000),
                              const Color(0xCC000000),
                              const Color(0xCC000000),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              child: Column(
                                children: [
                                  Text(
                                    "Unlimited\nentertainment,\none low price",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 36,
                                      color: ColorPalatte.textthemeColor,
                                      fontWeight: FontWeight.w500,
                                      // fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "All of Netflix, started at just\n199rs",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      color: ColorPalatte.textthemeColor,
                                      fontWeight: FontWeight.w400,
                                      // fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),

                              // color: Colors.blue,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        // height: 300,
                        // width: 300,
                        color: Colors.black,
                        child: Image.asset("assets/images/tv.png"),
                      ),
                      Container(
                        // margin: EdgeInsets.only(
                        //     top: MediaQuery.of(context).size.height * 0.1),
                        height: MediaQuery.of(context).size.height * 0.75,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          // color: Colors.red
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xCC000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0xCC000000),
                              const Color(0xCC000000),
                              const Color(0xCC000000),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(70),
                              child:
                                  Image.asset("assets/images/netflix_logo.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: Column(
                                children: [
                                  Text(
                                    "Enjoy on the TV",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 36,
                                      color: ColorPalatte.textthemeColor,
                                      fontWeight: FontWeight.w500,
                                      // fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Watch on smart TVs, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray players and more.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      color: ColorPalatte.textthemeColor,
                                      fontWeight: FontWeight.w400,
                                      // fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),

                              // color: Colors.blue,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        // height: 300,
                        // width: 300,
                        color: Colors.black,
                        child: Image.asset("assets/images/mobile.jpg"),
                      ),
                      Container(
                        // margin: EdgeInsets.only(
                        //     top: MediaQuery.of(context).size.height * 0.1),
                        height: MediaQuery.of(context).size.height * 0.75,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          // color: Colors.red
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xCC000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0xCC000000),
                              const Color(0xCC000000),
                              const Color(0xCC000000),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: Column(
                                children: [
                                  Text(
                                    "Download your shows to watch offline.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 36,
                                      color: ColorPalatte.textthemeColor,
                                      fontWeight: FontWeight.w500,
                                      // fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Save your favourites easily and always have something to watch.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      color: ColorPalatte.textthemeColor,
                                      fontWeight: FontWeight.w400,
                                      // fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),

                              // color: Colors.blue,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: ColorPalatte.primarycolor, // foreground
                ),
                onPressed: () {},
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
      ),
    );
  }
}

// child: Image(
//   fit: BoxFit.cover,
//   image: NetworkImage(
//       "https://assets.nflxext.com/ffe/siteui/vlv3/7a33204b-893d-4792-8494-b9d6cbc73848/8ed3a98a-e2c2-488d-9583-93634199485d/IN-en-20210502-popsignuptwoweeks-perspective_alpha_website_large.jpg"),
//   height: MediaQuery.of(context).size.width * 0.8,
//   width: MediaQuery.of(context).size.width,
// ),
//  Column(children: [],)
