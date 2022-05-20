import 'package:books/components/style.dart';
import 'package:books/database.dart/database.dart';
import 'package:flutter/material.dart';

class BooksDetailsSCreen extends StatefulWidget {
  final BooksBase booksbase;
  const BooksDetailsSCreen(this.booksbase, {Key? key}) : super(key: key);

  @override
  State<BooksDetailsSCreen> createState() => _BooksDetailsSCreenState();
}

class _BooksDetailsSCreenState extends State<BooksDetailsSCreen> {
  
  @override
  Widget build(BuildContext context) {
  final double height = MediaQuery.of(context).size.height;
  final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text(       
          "Back", style: TextStyle(color: kTetxColor, fontSize: 18), textAlign: TextAlign.left,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,size: 24,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),            
      ),
      body: Stack(
    
        children: [ 
          Hero(
            tag: "image", 
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/bg.png"
                  ),
                  fit: BoxFit.cover
                ) 
              )
            ),
          ),
          Center(
            child: SizedBox(
              height: height*0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Image.asset('assets/harrypage.png'),
                  Text(
                    "Harry Potter and the Goblet of Fire",
                    style: TextStyle(
                      color: kTetxColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: width*0.2,
                    child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Icon>[
                              Icon(
                                Icons.star,
                                size: 13,
                                color: kPrimaryColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 13,
                                color: kPrimaryColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 13,
                                color: kPrimaryColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 13,
                                color: kPrimaryColor,
                              ),
                              Icon( 
                                Icons.star,
                                size: 13,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                  ),
                 
                  SizedBox(
                    height: height*0.09,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Text>[
                        Text(
                          "Pada tahun keempatnya di Hogwarts, Harry",
                          style: TextStyle(
                            color: kTetxColor,
                            fontSize: 12
                          ),
                        ),
                        Text(
                          "dijebak untuk berkompetisi dalam Turnamen",
                          style: TextStyle(
                            color: kTetxColor,
                            fontSize: 12
                          ),
                        ),
                        Text(
                          "para penyihir senior dan juga menghadapi",
                          style: TextStyle(
                            color: kTetxColor,
                            fontSize: 12
                          ),
                        ),
                        Text(
                          "berbagai makhluk magis berbahaya.",
                          style: TextStyle(
                            color: kTetxColor,
                            fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: height*0.05,),

                  FlatButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    height: height*0.06,
                    child: Container(
                      height: height*0.06,
                      width: width*0.5,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Center(
                        child: Text(
                          "Pinjam Buku",
                          style: TextStyle(
                            fontSize: 18,
                            color: kBackgroundColor,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  )
                ]
              ),
            ),
          ),
        ]
      ),
    );
  }
}