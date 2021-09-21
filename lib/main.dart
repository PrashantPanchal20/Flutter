import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
   home: MyApp()
   )
   );
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
