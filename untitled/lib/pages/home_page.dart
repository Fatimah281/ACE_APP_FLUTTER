import 'package:ace/pages/child_state.dart';
import 'package:ace/pages/map_page.dart';
import 'package:ace/pages/play_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splash_screendart.dart';
import 'package:ace/pages/widgets/header_widget.dart';
import 'child_state.dart';
import 'map_page.dart';
import 'child_info.dart';
import 'play_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //for bar
          title: Text(
            "ACE",
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
                  Theme.of(context).primaryColor,
                  Theme.of(context).colorScheme.secondary,
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
                  leading: Icon(
                    Icons.insert_link_outlined,
                    size: _drawerIconSize,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  title: Text(
                    'Link The Bracelet',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text(
                        'Link The Bracelet',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      content: const Text(
                        'check linking with the bracelet in process...',
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.pinkAccent,
                          ),
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text(
                            'OK',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            height: 150,
                            margin: EdgeInsets.only(
                                top: 10, right: 10, left: 10, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Child's Emotion",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black87)),
                                new Image.asset(
                                  'assets/opposites11_07.jpg',
                                  width: 190,
                                  height: 190,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChildState()));
                          },
                        ),
                      )),
                      Center(
                          child: SizedBox(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            margin: EdgeInsets.only(
                                top: 10, right: 10, left: 10, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Child's Information",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black87)),
                                Image.asset(
                                  "assets/info.jpg",
                                  width: 190,
                                  height: 190,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChildInfo()));
                          },
                        ),
                      )),
                      Center(
                          child: SizedBox(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            margin: EdgeInsets.only(
                                top: 10, right: 10, left: 10, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Your Child's Location",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black87)),
                                Image.asset(
                                  "assets/20945441.jpg",
                                  width: 190,
                                  height: 190,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapPage()));
                          },
                        ),
                      )),
                      Center(
                          child: SizedBox(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            margin: EdgeInsets.only(
                                top: 10, right: 10, left: 10, bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Listen to Music",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black87)),
                                Image.asset(
                                  "assets/music.jpg",
                                  height: 190,
                                  width: 190,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayList()));
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
