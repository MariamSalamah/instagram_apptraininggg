import 'package:flutter/material.dart';
import 'package:instagram_app/bottom_navigationbar.dart';
import 'package:instagram_app/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryIconTheme: IconThemeData(color: Colors.black), // use this
           ),
       home: BottomBar() ,
    );
  }
}

