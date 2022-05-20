import 'package:books/components/style.dart';
import 'package:flutter/material.dart';

class CotegoryTitle extends StatelessWidget {
  const CotegoryTitle({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height*0.04,),
        Text(
          "Category",
          style: TextStyle(
            fontFamily: "fontsBold",
            color: kTetxColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: height*0.02,),
      ],
    );
  }
}

class CategoryHome extends StatelessWidget {
  const CategoryHome({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
  final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height*0.2,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Sains",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTetxColor,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Fantasi",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTetxColor,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Motivation & Inspiration",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTetxColor,
                    ),
                  ),
                ),
              ),
            ]
          ),
          SizedBox(height: height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Kesehatan& Nutrisi",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTetxColor,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Komik & Grafis",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTetxColor,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Horror",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTetxColor,
                    ),
                  ),
                ),
              ),
            ]
          ),
          SizedBox(height: height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Psikologi",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTetxColor,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Edukasi",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTetxColor,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Uang & Investasi",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTetxColor,
                    ),
                  ),
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}