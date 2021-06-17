import 'package:flutter/material.dart';

import 'package:flutter_application_1/Screen/compress/Background.dart';
import 'package:flutter_application_1/Screen/example.dart';
import 'package:flutter_application_1/Screen/signup.dart';
import 'package:flutter_application_1/Screen/login.dart';

import 'package:flutter_application_1/constract.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              Text(
                "Welcome to",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'SFMedium', fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("PATIENTX",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SFBold',
                        fontSize: 32,
                        letterSpacing: 12)),
              ),
              
             
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 520, left: 45),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 45),
                          color: PrimaryColor,
                          onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()),);},
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SFMedium',
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 520, left: 15),
                    child: FlatButton(
                      onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()),);},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                // Colors are easy thanks to Flutter's Colors class.
                                const Color(0xFF094c72),
                                const Color(0xFF055a8c),
                                const Color(0xFF026aa7),
                              ],
                              end: Alignment.centerLeft,
                              begin: Alignment.centerRight,
                              stops: [0.1, 0.6, 0.9],
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 36),
                          alignment: Alignment.center,
                          child: Text(
                            "Sign Up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SFMedium',
                                fontSize: 20),

                          ),
                        
                        ),

                      ),
                      
                      
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 70 ,left:70 ),
                child: Row(
                  
                children:<Widget>[Text("By using PatientX you agree our ",
                 textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SFMedium',
                                  fontSize: 13), 
                ),
                Text(" term ",
                textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SFMedium',
                                  fontSize: 13,
                                  fontWeight:FontWeight.bold,
                                  decoration: TextDecoration.underline,), 
                
                ),]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
