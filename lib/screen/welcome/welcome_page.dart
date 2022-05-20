import 'package:books/components/style.dart';
import 'package:books/screen/registration/register_page.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 110),
             const SizedBox(
               width: 280,
              child: Image(image: AssetImage("assets/lock.png"))
              ),



                
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 50),
                  child:  Text(
                    'Perpustakaan Degital', 
                    style: TextStyle(
                      color: kTetxColor, 
                      fontFamily: 'Helvatica-Bold',
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'E-Perpus adalah aplikasi perpustakaan,',
                        style: TextStyle(
                          color: kTetxColor,
                          fontFamily: 'Helvatica-Regular',
                          fontSize: 18
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        'digital yang menyewakan buku berbasis',
                        style: TextStyle(
                          color: kTetxColor,
                          fontFamily: "Helvatica-Regular",
                          fontSize: 18
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        'mobile.',
                        style: TextStyle(
                          color: kTetxColor,
                          fontFamily: 'Helvatica-Regular',
                          fontSize: 18
                        ),
                        )
                    ],
                  ),
                  
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 63,
                    width: 247,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  const RegisterPage()));
                      }, 
                      color: kPrimaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontFamily: "Helvatica-Bold",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kBackgroundColor
                        ),
                      ),
                    ),
                  ),      
                  
              ],
            ),
      ),
    );
  }
}