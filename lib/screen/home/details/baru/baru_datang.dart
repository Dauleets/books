import 'package:books/components/style.dart';
import 'package:books/database.dart/database.dart';
import 'package:books/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class BaruDatangCard extends StatelessWidget {
  final Function() notifyParent;
  const BaruDatangCard(this.notifyParent, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: baruDatang.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index){
        return GestureDetector(
          onTap: (){
            currentBaruDatang = baruDatang[index];
            currentSlider = 0;
            notifyParent();
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 17, bottom: 17),
                width: 130,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(baruDatang[index].image),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              
              Container(
                margin: const EdgeInsets.only(right: 17),
                child: Column(
                  children: [
                    Text(
                        baruDatang[index].name,
                        style: TextStyle(
                          color: kTetxColor,
                          fontSize: 14,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 0.02),
                      child: Text(
                          baruDatang[index].subname,
                          style: TextStyle(
                            color: kTetxColor,
                            fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        );
      }
    );
  }
}

class BaruDatangTitle extends StatelessWidget {
  const BaruDatangTitle({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "Baru Datang",
                style: TextStyle(
                  fontFamily: "fontsBold",
                  color: kTetxColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),

            FlatButton(
              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => BookScreen()));
              }, 
              child: Text(
                "View All",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              )
              ),
          ],
        ),
        SizedBox(height: height*0.02,),
      ],
    );
  }
}
