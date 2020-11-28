import 'dart:io';
import 'data.dart';
import 'package:flutter/material.dart';
//import 'package:smooth_page_indicator/smooth_indicators.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  //Uncomment for sliding bar dots indicator
  // Widget _buildPageIndicator(bool isCurrentPage){
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 2.0),
  //     height: isCurrentPage ? 10.0 : 6.0,
  //     width: isCurrentPage ? 10.0 : 6.0,
  //     decoration: BoxDecoration(
  //       color: isCurrentPage ? Colors.deepPurpleAccent : Colors.grey,
  //       borderRadius: BorderRadius.circular(12),
  //     ),
  //   );
  // }

  Widget _buildPageIndicator(bool isCurrentPage){
    return Container(
      child: SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 12.0,
          expansionFactor: 8,
          activeDotColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            children: <Widget>[
              SlideTile(
                imagePath: mySLides[0].getImageAssetPath(),
                title: mySLides[0].getTitle(),
                desc: mySLides[0].getDesc(),
              ),
              SlideTile(
                imagePath: mySLides[1].getImageAssetPath(),
                title: mySLides[1].getTitle(),
                desc: mySLides[1].getDesc(),
              ),
              SlideTile(
                imagePath: mySLides[2].getImageAssetPath(),
                title: mySLides[2].getTitle(),
                desc: mySLides[2].getDesc(),
              )
            ],
          ),
        ),
        bottomSheet: slideIndex != 2 ? Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    for (int i = 0; i < 1 ; i++) i == slideIndex ? _buildPageIndicator(true): _buildPageIndicator(false),
                  ],),
              ),
            ],
          ),
        ): InkWell(
          onTap: (){
            print("Get Started Now");
          },
          child: Container(
            height: Platform.isIOS ? 70 : 60,
            color: Colors.deepPurpleAccent,
            alignment: Alignment.center,
            child: Text(
              "CREATE AN ACCOUNT",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;

  SlideTile({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
          SizedBox(
            height: 40,
          ),
          Text(title,style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),),
          SizedBox(
            height: 20,
          ),
          Text(desc, textAlign: TextAlign.left,style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25))
        ],
      ),
    );
  }
}