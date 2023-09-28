import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nflix_app/Shared/components.dart';
import 'package:nflix_app/boarding/getstarted.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();

    // getuserdata();
    Timer(Duration(seconds: 5), () {
      // print(islogged);
      // if (islogged == true) {
      //   print("User is already logged in");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GetStartedScreen()));
      // } else {
      //   print("User is not logged in");
      //   Navigator.pushReplacement(
      //       context, MaterialPageRoute(builder: (context) => EnterPhone()));
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                    child: Lottie.asset("assets/lotties/netflix_splash.json")),
                // Center(
                //   child: Customindicator(),
                // )
              ],
            ),
            // Container(
            //   width: 220,
            //   // margin: EdgeInsets.symmetric(),
            //   child: LinearProgressIndicator(
            //     backgroundColor: Colors.greenAccent,
            //     valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
