import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:flutter_application_1/Screen/compress/Background.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(),
      home: new TestPage1(title: 'Flutter Demo Home Page'),
    );
  }
}

class TestPage1 extends StatefulWidget {
  final String title;
  TestPage1({this.title});
  @override
  TestPage1State createState() {
    return new TestPage1State();
  }
}

class TestPage1State extends State<TestPage1> {
  int _slideIndex = 0;
  int _bottomIndex = 0;

  final List<String> images = [
    "images/ac.png",
    "images/cc.png",
    "images/c.png",
  ];

  final List<String> text1 = [
    "Meet your doctor and take appointment ",
    "Keep your records in order ",
    "Set reminder for take the medicine",
  ];

  final IndexController controller = IndexController();
  

  @override
  Widget build(BuildContext context) {
    TransformerPageView transformerPageView = TransformerPageView(
      pageSnapping: true,
      onPageChanged: (index) {
        setState(() {
          this._slideIndex = index;
          this._bottomIndex = index;
        });
      },
      loop: false,
      controller: controller,
      transformer: new PageTransformerBuilder(
          builder: (Widget child, TransformInfo info) {
        return SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: new Material(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ParallaxContainer(
                  child: Container(
                    padding: EdgeInsets.only(top: 150),
                    child: new Image.asset(
                      images[info.index],
                      height: 350,
                      width: 350,
                    ),
                  ),
                  position: info.position,
                ),
                new ParallaxContainer(
                  child: Container(
                    padding: EdgeInsets.only(top: 0),
                    width: 300,
                    child: new Text(
                      text1[info.index],
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontFamily: 'SFMedium',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  position: info.position,
                  translationFactor: 300.0,
                ),
                SizedBox(),
                Container(
                  
                  padding: EdgeInsets.only(top: 40,left: 20),
                  child: new ParallaxContainer(
                    
                    position: info.position,
                    translationFactor: 500.0,
                    child:Dots(controller:controller,slideIndex: _slideIndex,numberOfDots: images.length,)
                    ),
                ),
                 
                
              ],
            ),
          ),
        );
      }),
      itemCount: 3,
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: transformerPageView,
    );
  }
}

class Dots extends StatelessWidget {
  final IndexController controller;
  final int slideIndex;
  final int numberOfDots;
  Dots({this.controller, this.slideIndex, this.numberOfDots});
  List<Widget> _generateDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numberOfDots; i++) {
      dots.add(i == slideIndex ? _activeSlide(i) : _inactiveSlide(i));
    }
    return dots;
  }

  Widget _activeSlide(int index) {
    return GestureDetector(
      onTap: () {
        print('Tapped');
      },
      child: new Padding(
        padding: EdgeInsets.only( left:20, right:12),
        child: Container(
        width: 10,
        height: 10,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.blue,),
      ),)
    );
  }

  Widget _inactiveSlide(int index) {
    return GestureDetector(
      onTap: () {
        controller.move(index);
      },
      child: new Padding(
        padding: EdgeInsets.only( left: 20, right:20),
        child:Container(
        width: 10,
        height: 10,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(50), color: Color(0xFFe0f2f1)),)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      

      children: _generateDots(),
    ));
  }
}
