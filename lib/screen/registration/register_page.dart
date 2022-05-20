import 'package:books/components/style.dart';
import 'package:books/screen/home/home_screen.dart';
import 'package:books/screen/registration/register_page_2.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
               
            children: <Widget>[
              SizedBox(
                  height: 56,
                  width: 232,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "UserName",
                      fillColor: kPrimaryColor,
                      labelStyle: TextStyle(color: kPrimaryColor, fontSize: 16),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: kPrimaryColor), 
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),                 
                  ),
                ),
              const SizedBox(height: 20),
              SizedBox(
                height: 56,
                width: 232,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",      
                    fillColor: kPrimaryColor,
                    labelStyle: TextStyle(color: kTetxColor, fontSize: 16),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: kTetxColor.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2,color: kTetxColor.withOpacity(0.1)), 
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),                
                ),
              ),

              const SizedBox(height: 30),


               SizedBox(        
                    width: 232,
                    height: 53,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      }, 
                      color: kPrimaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: "Helvatica-Bold",
                          fontSize: 18,
                          color: kBackgroundColor
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  SizedBox(        
                    width: 232,
                    height: 53,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: (){             
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  const RegistrationPage()));
                      }, 
                      color: Colors.blueGrey[900],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontFamily: "Helvatica-Bold",
                          fontSize: 18,
                          
                          color: kBackgroundColor
                        ),
                      ),
                    ),
                  ),


            ],
          ),
        ),
      ),
    );
  }
}