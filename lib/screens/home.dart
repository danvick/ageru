import 'package:ageru/config.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: <Widget>[
        Container(
          color: Color(0xFFebe9de),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 100,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(color: Colors.grey.withOpacity(.6)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Icon(Icons.notifications, color: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // canvasColor: Color(0xFF3E3E3E),
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Colors.white),
          ),
        ),
        // color: Color(0xFF3E3E3E),
        child: Stack(
          children: <Widget>[
            BottomNavigationBar(
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.map, color: Config.darkerGreen,),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FeatherIcons.grid, color: Colors.grey,),
                  title: Text('Repeat'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FeatherIcons.camera, color: Colors.grey,),
                  title: Text('Playing'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FeatherIcons.messageSquare, color: Colors.grey,),
                  title: Text('Music'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FeatherIcons.settings, color: Colors.grey,),
                  title: Text('Favorites'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
