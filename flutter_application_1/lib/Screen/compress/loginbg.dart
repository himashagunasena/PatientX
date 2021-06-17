import 'package:flutter/material.dart';


class BgLogin extends StatelessWidget {
  final Widget child;
  const BgLogin( {
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
          "images/log.png",
          width: size.width,
          height: size.height*0.9,
          fit: BoxFit.cover,
        ),
        
      ), Container(padding: EdgeInsets.only(top:630
      ),
                        child: Divider(color: Colors.grey, thickness: 1.5,indent: 20,endIndent: 20,),
                      ),child,]
       ),
     
    );
    
  }
}
