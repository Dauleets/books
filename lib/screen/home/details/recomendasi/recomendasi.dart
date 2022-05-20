
import 'package:books/components/style.dart';
import 'package:books/database.dart/database.dart';
import 'package:books/screen/book/book_page.dart';
import 'package:books/screen/book/detalis_dart.dart';
import 'package:flutter/material.dart';

class RecomdasiCard extends StatelessWidget {
  const RecomdasiCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => BooksDetailsSCreen(BooksBase(image: "",name: ""))));
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(      
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Ink.image(
                  height: 200,
                  image: AssetImage(
                    "assets/RecomendedImage.png", 
                  ),
                  fit: BoxFit.fitWidth,
                )
              ]
            ),
            
            SizedBox(height: height*0.01,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Harry Potter and the Goblet",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: height*0.01,),
                  SizedBox(
                    width: 80,
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Icon>[
                        Icon(
                          Icons.star,
                          size: 15,
                          color: kPrimaryColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: kPrimaryColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: kPrimaryColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: kPrimaryColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: height*0.01),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Pada tahun keempatnya di Hogwarts, Harry\nuntuk berkompetisi dalam. Turnamen\nTriwizard. Namun...",
                        style: Theme.of(context).textTheme.subtitle2
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.02),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

class RecomendasiTitle extends StatelessWidget {
  const RecomendasiTitle({
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
          "Recomendasi",
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