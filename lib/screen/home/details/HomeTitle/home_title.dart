import 'package:books/components/style.dart';
import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height*0.02,),
        const Text(
          "Welcome",
          style: TextStyle(
            fontFamily: "fontsReg",
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
        Text(
          "imyour_universe",
          style: TextStyle(
            fontFamily: "fontsBold",
            color: kTetxColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: height*0.03,),
      ],
    );
  }
}