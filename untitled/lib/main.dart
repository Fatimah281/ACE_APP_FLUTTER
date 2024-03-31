import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ace/pages/splash_screendart.dart';


void main() {
  runApp(LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
  // Design color

  //Color _primaryColor =HexColor('#DC54FE');
 //Color accentColor= HexColor ('#8A02AE');

  Color _primaryColor= HexColor('#FFC867');
 Color _accentColor= HexColor('#FF3CBD');

  // Our Logo Color
   //Color _primaryColor= HexColor('#D44CF6');
  // Color _accentColor= HexColor('#5E18C8');

  // Our Logo Blue Color
  //Color _primaryColor= HexColor('#651BD2');
  //Color _accentColor= HexColor('#320181');


  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Login',

      theme: ThemeData(

     primaryColor: _primaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey,accentColor: _accentColor).copyWith(secondary: _accentColor),
      ),
      home: SplashScreen(title: 'Flutter  Login Ui'),


    );
  }
}
