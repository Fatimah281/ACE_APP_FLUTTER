
import 'dart:async';

import 'package:ace/common/theme_helper.dart';
import 'package:ace/pages/registration_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;

  _SplashScreenState(){

    new Timer(const Duration(milliseconds: 2000), (){
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => RegistrationPage()), (route) => false);
      });
    });

    new Timer(
        Duration(milliseconds: 500),(){
      setState(() {
        _isVisible = true; // Now it is showing fade effect and navigating to Login page
      });
    }
    );

  }

  @override
  Widget build(BuildContext context) {


    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [Theme.of(context).primaryColor, Theme.of(context).colorScheme.secondary],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,

        ),

      ),

      child: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 1200),
        child: Container(
          padding: EdgeInsets.fromLTRB(40, 10, 20, 10),
          child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image.asset("assets/logoace.png",
                     alignment: Alignment.topCenter ,
                     width: 300, height: 300,
                    ),
                    Text(
                      "ACE",

                      style: TextStyle(fontSize: 80, color: Colors.white,fontFamily:'Raleway')
                      ,
                    ),
                     Text(
                            'Autism Child Emotion',
                       style: TextStyle(fontSize: 20, color: Colors.amberAccent),
          ),
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),


                    Container(
                        margin: EdgeInsets.fromLTRB(2,100,100,2),
                        alignment: Alignment.bottomRight,
                        child:
                        ElevatedButton(
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                              padding: EdgeInsets.zero,

                            child: Icon(Icons.language_outlined, size: 30, color: Colors.white,)
                          ),

                          onPressed: (){
                            //After successful login we will redirect to profile page. Let's create profile page now
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                          },
                        ),
                    ),



              ]),
        ),

        ),


    );



  }
}