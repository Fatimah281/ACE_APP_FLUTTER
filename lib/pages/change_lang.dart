import 'package:ace/common/theme_helper.dart';
import 'package:ace/pages/registration_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ace/pages/widgets/header_widget.dart';

class ChangeLang extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _ChangeLang();
  }
}

class _ChangeLang extends State<ChangeLang>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( //for bar
          title: Text("Change languages",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0.5,
          iconTheme: IconThemeData(color: Colors.white),
          flexibleSpace:Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).colorScheme.secondary,]
                )
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only( top: 16, right: 16,),
              child: Stack(
                children: <Widget>[
                  Icon(Icons.notifications),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                      constraints: BoxConstraints( minWidth: 12, minHeight: 12, ),
                      child: Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                    ),
                  )
                ],
              ),
            )
          ],
        ),

        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(height: 100, child: HeaderWidget(100,false,Icons.house_rounded),),
              Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.fromLTRB(35, 80, 35, 10),
                  padding: EdgeInsets.fromLTRB(35, 80, 35, 10),
                  child: Column(
                    children: [
                      Text(

                        'The Language You want Continue with',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                      Container(
                        decoration: ThemeHelper().buttonBoxDecoration(context),
                        margin: EdgeInsets.all(20),
                        child: ElevatedButton(

                          style: ThemeHelper().buttonStyle(),
                          child:
                          Padding(
                            padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                            child: Text('English'.toLowerCase(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                          onPressed: (){
                            //After successful login we will redirect to profile page. Let's create profile page now
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                          },
                        ),
                      ),
                      Container(
                        decoration: ThemeHelper().buttonBoxDecoration(context),
                        margin: EdgeInsets.all(20),
                        child: ElevatedButton(
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text('    عربي    '.toLowerCase(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                          onPressed: (){
                            //After successful login we will redirect to profile page. Let's create profile page now
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                          },
                        ),
                      ),





                    ],

                  )
              ),

            ],


          ),
        )
    );


  }

}
