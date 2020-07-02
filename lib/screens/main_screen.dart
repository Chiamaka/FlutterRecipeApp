import "package:flutter/material.dart";
import "package:startupnamer/screens/recipe_screen.dart";
import "package:startupnamer/foodicons_icons.dart";

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RecipeScreen(), bottomNavigationBar: bottomNavigation());
  }
}

Widget bottomNavigation() {
  return BottomAppBar(
    color: Color.fromARGB(255, 253, 253, 253),
    child: Container(
      height: 73.0,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Foodicons.recipe,
                color: const Color(0xFF333333),
              ),
              Container(
                child: Text('Recipes',
                    style: TextStyle(color: const Color(0xFF333333))),
              )
            ],
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Foodicons.fav, color: const Color(0xffc4c4c4)),
              Container(
                child: Text('Favourites',
                    style: TextStyle(color: const Color(0xffc4c4c4))),
              )
            ],
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Foodicons.user, color: const Color(0xffc4c4c4)),
              Container(
                child: Text('Profile',
                    style: TextStyle(color: const Color(0xffc4c4c4))),
              )
            ],
          ))
        ],
      ),
    ),
  );
}
