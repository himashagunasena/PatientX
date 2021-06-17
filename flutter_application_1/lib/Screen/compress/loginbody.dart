import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/compress/loginbg.dart';
import 'package:flutter_application_1/Screen/signup.dart';

import '../../constract.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: BgLogin(
            child: Column(
      children: [
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "SFBold", fontSize: 32, color: Colors.white),
            )),
        Container(
          padding: EdgeInsets.only(top: 100, left: 10, right: 10),
          width: 360,
          child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(50))))),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, left: 10, right: 10),
          width: 360,
          child: TextField(
            decoration: InputDecoration(
                labelText: 'Password',
                hintText: null,
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  Icons.lock,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(50)))),
            obscureText: true,
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 140),
                color: PrimaryColor,
                onPressed: () {},
                child: Text(
                  "Login",
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
          padding: EdgeInsets.only(top: 200),
          child: Container(
              alignment: Alignment.center,
              width: 120,
              color: Colors.white,
              child: Text(
                "or connect with",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: "SEMedium",
                    backgroundColor: Colors.white),
              )),
        ),
        Container(
                    padding:
                        const EdgeInsets.only(top: 25, left: 35, right: 35),
                    child: FlatButton(
                      onPressed: () {},
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
                          padding:
                              EdgeInsets.symmetric(vertical: 18, horizontal: 0),
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Icon(
                                      Icons.email,
                                      color: Colors.white,
                                    )),
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Connect With Gmail",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SFMedium',
                                        fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                   Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 60, left:120),
                      child: Row(children: <Widget>[
                        Text(
                          "Already a member?",
                         
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'SFMedium',
                              fontSize: 13),
                        ),
                       
                          TextButton(
                            
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()),);},
                            child: Text(
                              "Sign Up ",
                             
                              style: TextStyle(
                                
                                color: Colors.blue,
                                fontFamily: 'SFMedium',
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        
                      ]),
                    ),
                  ),
      ],
    )));
  }
}
