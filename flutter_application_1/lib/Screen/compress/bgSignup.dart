import 'package:flutter/material.dart';


class BgSignup extends StatelessWidget {
  final Widget child;
  const BgSignup( {
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  
    return Container(
      color: Colors.white,
       child:Stack(
          children: <Widget>[

      
      Container(
        padding: EdgeInsets.only(),
        
        child: Image.asset(
          "images/sign1.png",
          width: size.width,
          height: size.height*0.45,
          fit: BoxFit.cover,
        ),
      ),child,]
       ),
     
    );
    
  }
}
