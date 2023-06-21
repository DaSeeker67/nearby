import 'package:ecommerce_app/pages/homepage.dart';
import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/pages/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.green,
          fontFamily: GoogleFonts.lato().fontFamily,
    ),

      darkTheme: ThemeData(
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.lato().fontFamily,
    ),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),

      },



    );
  }
}
