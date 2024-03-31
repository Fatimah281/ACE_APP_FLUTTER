import 'package:ace/common/theme_helper.dart';
import 'package:ace/pages/child_info.dart';
import 'package:ace/pages/map_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splash_screendart.dart';
import 'package:ace/pages/widgets/header_widget.dart';
import 'home_page.dart';

class Suggestions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Suggestions();
  }
}

class _Suggestions extends State<Suggestions> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //for bar
          title: Text(
            "Suggestions",
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
                            height: 300,
                            margin: EdgeInsets.only(
                                top: 100, right: 10, left: 10, bottom: 10),
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("You Can Do",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.deepOrangeAccent,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    "list of Suggestions"
                                    "#Recognising emotions"
                                    "#Babies who are later diagnosed with autism "
                                    "can recognise feelings in a similar way to",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black87)),
                              ],
                            ),
                          ),
                        ),
                      )),
                      Container(
                        decoration: ThemeHelper().buttonBoxDecoration(context),
                        margin: EdgeInsets.all(20),
                        child: ElevatedButton(
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          onPressed: () {
                            //After successful login we will redirect to profile page. Let's create profile page now
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
