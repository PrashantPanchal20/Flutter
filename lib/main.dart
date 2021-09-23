import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/utils/routes.dart';
//import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
       // fontFamily: googlefonts.
      ),

      initialRoute: "/login",
      routes: {
//      "/": (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
        MyRoutes.homeRoutes: (context) => HomePage()


//        "/login": (context) => LoginPage(),
//        "/home": (context) => HomePage(),
      },
    );
  }
}
