import 'package:books/components/style.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({ Key? key }) : super(key: key);

  @override
  State<RegistrationPage> createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  final formKey = GlobalKey<FormState>();
  String name = "";
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scafffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kTetxColor,
            size: 20,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: kBackgroundColor,
        child: Center(
          child: Form(
            key: formKey,
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
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                        return "Enter correct name";
                      } else {
                        return null;
                      }
                    },                  
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 56,
                  width: 232,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Email",      
                      fillColor: kPrimaryColor,
                      labelStyle: TextStyle(color: kTetxColor, fontSize: 16),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(10)
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
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value!)){
                        return "Enter correct email";
                      }
                    },                 
                  ),
                ),
          
                const SizedBox(height: 20),
                SizedBox(
                  height: 56,
                  width: 232,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",   
                         
                      fillColor: kPrimaryColor,
                      labelStyle: TextStyle(color: kTetxColor, fontSize: 16),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: kPrimaryColor),
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
                    onChanged: (value){                  
                      
                    },                 
                  ),
                ),
          
                const SizedBox(height: 20),
                SizedBox(
                  height: 56,
                  width: 232,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",      
                      fillColor: kPrimaryColor,
                      labelStyle: TextStyle(color: kTetxColor, fontSize: 16),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color:kPrimaryColor),
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
                    onChanged: (value){                  
                      
                    },                 
                  ),
                ),
          
                const SizedBox(height: 50),
                    const SizedBox(height: 18),
                    SizedBox(        
                      width: 232,
                      height: 53,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: (){
                         if(formKey.currentState!.validate()){
                           const snackBar = SnackBar(content: Text('Sumnitting form'),);
        
                           _scafffoldkey.currentState!.showSnackBar(snackBar);
                         }
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
      ),
    );
  }
}