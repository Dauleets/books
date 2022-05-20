import 'package:books/components/style.dart';
import 'package:books/database.dart/database.dart';
import 'package:books/screen/book/detalis_dart.dart';
import 'package:books/screen/home/details/search/search.dart';
import 'package:flutter/material.dart';


class BookScreen extends StatefulWidget {
  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: SearchHome(),
          ),                
          SizedBox(child: listBooks(notifyParent: refResh), height: height,),
        ],
      )
    );   
  }
   refResh(){
    setState(() {

    });
  }
}

class listBooks extends StatelessWidget {
  const listBooks({
    Key? key,
    required this.notifyParent,
  }) : super(key: key);

  final Function() notifyParent;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: booksCard.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index){
        return GestureDetector(
          onTap: (){
            currentBooks = booksCard[index];
            currentSlider = 0;
            notifyParent();
          },
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => BooksDetailsSCreen(BooksBase(name: booksCard[index].name, image: booksCard[index].image))));
            },
            child: Card(
              elevation: 0,
              color: kBackgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(booksCard[index].image),
                      SizedBox(height: height*0.01,),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      booksCard[index].name,
                      style: TextStyle(
                        fontSize: 14,
                        color: kTetxColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
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
                          SizedBox(height: height*0.01,),
                ],
              ),
            ),
          )
        ); 
      },
    );
  }
}


BooksBase currentBooks = BooksBase(
  name: "Title",
  image: "assets/book_1.png",
);


double currentSlider = 0;