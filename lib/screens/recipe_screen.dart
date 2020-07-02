import 'dart:ui';
import "package:flutter/material.dart";

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios, color: const Color(0xfffF7F7F7)),
          title: Text('Pork Sausage & \nBell Pepper Risotto'),
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.053),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.favorite_border,
                    color: const Color(0xfffF7F7F7)))
          ],
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[
            heroSection(),
            Container(
              padding: new EdgeInsets.all(24.0),
              child: Row(
                children: <Widget>[
                  Text('Ingredients',
                      style: TextStyle(fontSize: 18, color: Color(0xFF707070))),
                  SizedBox(width: 10),
                  Icon(Icons.keyboard_arrow_up, color: Color(0xFFB3B3B3))
                ],
              ),
            ),
            Container(
              padding: new EdgeInsets.only(left: 24),
              height: 150.0,
              child: ingredientsScroller(),
            ),
            Container(
              padding: new EdgeInsets.all(24.0),
              child: Row(
                children: <Widget>[
                  Text('Nutritional Values',
                      style: TextStyle(fontSize: 18, color: Color(0xFF707070))),
                  SizedBox(width: 10),
                  Icon(Icons.keyboard_arrow_down, color: Color(0xFFB3B3B3))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: <Widget>[
                  Text('Cooking Instructions',
                      style: TextStyle(fontSize: 18, color: Color(0xFF707070))),
                  SizedBox(width: 10),
                  Icon(Icons.keyboard_arrow_down, color: Color(0xFFB3B3B3))
                ],
              ),
            ),
          ],
        ));
  }
}

Widget heroSection() {
  return Stack(children: <Widget>[
    Container(
      height: 357.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
          image: DecorationImage(
              image: AssetImage('images/risotto.jpg'), fit: BoxFit.cover)),
    ),
    Container(
      height: 357.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0)),
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.53),
                Color(0xff383838).withOpacity(0.53)
              ],
              stops: [
                0.0,
                1.0
              ])),
    ),
    Positioned(
        left: 50,
        bottom: 16,
        width: 294.0,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              children: <Widget>[
                Icon(Icons.timer, color: Colors.white),
                SizedBox(height: 11.0),
                Text('30 mins', style: TextStyle(color: Colors.white))
              ],
            )),
            Expanded(
                child: Column(
              children: <Widget>[
                Icon(Icons.star, color: Colors.white),
                SizedBox(height: 11.0),
                Text('4.5 rating', style: TextStyle(color: Colors.white))
              ],
            )),
            Expanded(
                child: Column(
              children: <Widget>[
                Icon(Icons.fastfood, color: Colors.white),
                SizedBox(height: 11.0),
                Text('3556kJ', style: TextStyle(color: Colors.white))
              ],
            ))
          ],
        ))
  ]);
}

Widget ingredientsScroller() {
  return ListView(scrollDirection: Axis.horizontal, children: <Widget>[
    Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 75,
        width: 75,
        child: Image(image: AssetImage('images/chicken-stock.png')),
      ),
      SizedBox(
          width: 100,
          child:
              Text('Chicken Stock Concentrate', textAlign: TextAlign.center)),
      Text(
        '2 units',
        style: TextStyle(color: Color(0XFF9A9696)),
      )
    ]),
    Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 75,
        width: 75,
        child: Image(image: AssetImage('images/bell-pepper.png')),
      ),
      SizedBox(
          width: 100, child: Text('Bell Pepper', textAlign: TextAlign.center)),
      Text(
        '1 unit',
        style: TextStyle(color: Color(0XFF9A9696)),
      )
    ]),
    Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 75,
        width: 75,
        child: Image(image: AssetImage('images/lemon.png')),
      ),
      SizedBox(width: 100, child: Text('Lemon', textAlign: TextAlign.center)),
      Text(
        '1 unit',
        style: TextStyle(color: Color(0XFF9A9696)),
      )
    ]),
    Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 75,
        width: 75,
        child: Image(image: AssetImage('images/garlic.png')),
      ),
      SizedBox(width: 100, child: Text('Garlic', textAlign: TextAlign.center)),
      Text(
        '1 unit',
        style: TextStyle(color: Color(0XFF9A9696)),
      )
    ]),
    Column(children: <Widget>[
      Container(
        margin: EdgeInsets.fromLTRB(24, 0, 24, 5),
        height: 75,
        width: 75,
        child: Image(image: AssetImage('images/scallions.png')),
      ),
      SizedBox(
          width: 100, child: Text('Scallions', textAlign: TextAlign.center)),
      Text(
        '2 units',
        style: TextStyle(color: Color(0XFF9A9696)),
      )
    ]),
  ]);
}
