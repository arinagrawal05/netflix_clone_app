import 'package:flutter/material.dart';
import 'package:nflix_app/Shared/colors.dart';

class Customindicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30.0),
      child: CircularProgressIndicator(
          strokeWidth: 0.6,
          valueColor: new AlwaysStoppedAnimation(Colors.grey)),
    );
  }
}

class Customdivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 4,
      color: ColorPalatte.primarycolor,
    );
  }
}
