import 'package:ace/pages/child_info.dart';
import 'package:ace/pages/map_page.dart';
import 'package:ace/pages/play_vedio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splash_screendart.dart';
import 'package:ace/pages/widgets/header_widget.dart';
import 'play_vedio.dart';
import 'home_page.dart';
import 'child_state.dart';

class PlayList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlayList();
  }
}

class _PlayList extends State<PlayList> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //for bar
          title: Text(
            "Play List",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0.5,
          iconTheme: IconThemeData(color: Colors.white),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Theme.of(context).primaryColor,
                  Theme.of(context).colorScheme.secondary,
                ])),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(
                top: 16,
                right: 16,
              ),
              child: Stack(
                children: <Widget>[
                  Icon(Icons.notifications),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                  0.0,
                  1.0
                ],
                    colors: [
                  Theme.of(context).primaryColor.withOpacity(0.2),
                  Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                ])),
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).colorScheme.secondary,
                      ],
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Choose from the list", // the list
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(Icons.other_houses_outlined,
                      size: _drawerIconSize,
                      color: Theme.of(context).colorScheme.secondary),
                  title: Text(
                    'Home Page',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(
                    Icons.emoji_emotions_outlined,
                    size: _drawerIconSize,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  title: Text(
                    'Childs Emotion',
                    style: TextStyle(
                        fontSize: 17,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChildState()));
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(
                    Icons.info_outlined,
                    size: _drawerIconSize,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  title: Text(
                    'Childs Information',
                    style: TextStyle(
                        fontSize: 17,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChildInfo()));
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(Icons.location_on_outlined,
                      size: _drawerIconSize,
                      color: Theme.of(context).colorScheme.secondary),
                  title: Text(
                    'Your Childs Location',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapPage()),
                    );
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SplashScreen(
                                title: '',
                              )),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 100,
                child: HeaderWidget(100, false, Icons.house_rounded),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: [
                      Center(
                          child: SizedBox(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            margin: EdgeInsets.only(
                                top: 20, right: 10, left: 5, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white30,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.music_note_outlined),
                                Text("surprise",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                    )),
                                Text("if you surprise say im sas",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black26)),
                                Icon(Icons.play_circle_fill_rounded),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayVedio()));
                          },
                        ),
                      )),
                      Center(
                          child: SizedBox(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            margin: EdgeInsets.only(
                                top: 20, right: 10, left: 5, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white30,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.music_note_outlined),
                                Text("Happy",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                    )),
                                Text("if you happy say im sas",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black26)),
                                Icon(Icons.play_circle_fill_rounded),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayVedio()));
                          },
                        ),
                      )),
                      Center(
                          child: SizedBox(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            margin: EdgeInsets.only(
                                top: 20, right: 10, left: 5, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white30,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.music_note_outlined),
                                Text("Sad",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                    )),
                                Text("if you sad say im sas",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black26)),
                                Icon(Icons.play_circle_fill_rounded),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayVedio()));
                          },
                        ),
                      )),
                      Center(
                          child: SizedBox(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            margin: EdgeInsets.only(
                                top: 20, right: 10, left: 5, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white30,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.music_note_outlined),
                                Text("fear",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                    )),
                                Text("if you fear say im sas",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black26)),
                                Icon(Icons.play_circle_fill_rounded),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayVedio()));
                          },
                        ),
                      )),
                      Center(
                          child: SizedBox(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            margin: EdgeInsets.only(
                                top: 20, right: 10, left: 5, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white30,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.music_note_outlined),
                                Text("disgust",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                    )),
                                Text("if you disgust say im sas",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black26)),
                                Icon(Icons.play_circle_fill_rounded),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayVedio()));
                          },
                        ),
                      )),
                      Center(
                          child: SizedBox(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            margin: EdgeInsets.only(
                                top: 20, right: 10, left: 5, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white30,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.music_note_outlined),
                                Text("anger",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                    )),
                                Text("if you anger say im sas",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black26)),
                                Icon(Icons.play_circle_fill_rounded),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayVedio()));
                          },
                        ),
                      )),
                    ],
                  )),
            ],
          ),
        ));
  }
}
