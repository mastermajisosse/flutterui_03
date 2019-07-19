import 'package:flutter/material.dart';
import 'dart:math';

// import 'package:tes8/productCart.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[HomeScreenTopPart(), HomeScreenBottomPart()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    // color: Colors.cyan,
                  ),
                  title: Text("home")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    // color: Colors.black12,
                  ),
                  title: Text("search")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark_border,
                    // color: Colors.black12,
                  ),
                  title: Text("bookmark")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    // color: Color(0xFFE52020),
                  ),
                  title: Text("profile")),
            ]));
  }
}

class HomeScreenBottomPart extends StatelessWidget {
  List<String> images = [
    "assets/runaways.jpg",
    "assets/avengers.jpg",
    "assets/blackpanther.jpg",
  ];

  List<String> titles = ["Runaway", "Avengers", "Black Pather"];

  List<Widget> movies() {
    List<Widget> movie = new List();

    for (var i = 0; i < 3; i++) {
      var movieItem = Padding(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
        child: Container(
          height: 220.0,
          width: 135.0,
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 10.0),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                child: Image.asset(
                  images[i],
                  width: double.infinity,
                  height: 130.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
                child: Text(
                  titles[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.0),
                child: Text(i == 0 ? "season 2" : "se"),
              )
            ],
          ),
        ),
      );
      movie.add(movieItem);
    }
    return movie;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360.0,
      margin: EdgeInsets.only(left: 25.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "watch now",
                  style: TextStyle(fontSize: 22.0),
                ),
                FlatButton(
                  child: Text("view more"),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: movies(),
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreenTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MClipper(),
            child: Container(
              height: 330.0,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/banner.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        const Color(0x00000000),
                        const Color(0xD9333333),
                      ],
                      stops: [0.0, 0.9],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.0, 1.0),
                    )),
                    child: Padding(
                      padding: EdgeInsets.only(top: 120.0, left: 95.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("watch before everyone",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0)),
                          Text("the punisher 2",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 40.0))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 340.0,
            right: -20.0,
            child: FractionalTranslation(
              translation: Offset(0.0, -0.5),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add,
                      color: Color(0xFFE52020),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 9.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 80.0),
                      child: Row(
                        children: <Widget>[
                          Text("watch now",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0)),
                          SizedBox(width: 5.0),
                          RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                  IconData(58820, fontFamily: 'MaterialIcons'),
                                  size: 25.0,
                                  color: Colors.white))
                        ],
                      ),
                      onPressed: () {},
                      color: Color(0xFFE52020),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100.0);

    var controlPoint = Offset(35.0, size.height);
    var endPoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
