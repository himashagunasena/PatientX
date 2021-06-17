import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/example.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Container(
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,

          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            const Color(0xFF0079bf),
            const Color(0xFF094c72),
          ],
        ),
      ),
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 630, left: 25),
            height: 890,
            width: 359,
            decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey[800].withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 5,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
                color: Colors.lightBlue[600],
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0))),
          ),
          Example(
            
          ),
         
          Container(
            margin: EdgeInsets.only(top: 640, left: 25),
            height: 900,
            width: 359,
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0))),
          ),
          child,
        ],
      ),
    );
  }
}
