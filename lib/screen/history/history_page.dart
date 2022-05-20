import 'package:books/components/style.dart';
import 'package:books/database.dart/database.dart';
import 'package:books/screen/home/details/search/search.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 32,right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: height*0.07,),
          SearchHome(),
          SizedBox(height: height*0.03,),
          SizedBox(
            height: height*0.3,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                HistoryCard(
                  name: "Harry Potter and the\nGoblet of Fire",
                  dataname: "27 Juni - 1 Juli 2021",
                  image: "assets/bookHisroty1.png",
                ),
                HistoryCard(
                  name: "Dilan 1990",
                  dataname: "2 Juli - 12 Juli 2021",
                  image: "assets/bookHisroty2.png",
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  const HistoryCard({required this.image,required this.name,required this.dataname,  Key? key}) : super(key: key);
  final String image;
  final String name;
  final String dataname;

  @override
  Widget build(BuildContext context) {

    return Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(image),
                  SizedBox(
                    height: 90,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Text>[
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 14,
                            color: kTetxColor,
                            fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          dataname,
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                          textAlign: TextAlign.end,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 17),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.3, color: Colors.grey.withOpacity(0.3))
                  ),
                ),
              ),
            ],
          ),
        );
  }
}