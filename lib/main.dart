import 'package:facebook/Home_screen/homeScreen.dart';
import 'package:facebook/login_screen/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routName,
      routes:{
        LoginScreen.routName: (context)=>LoginScreen(),
        HomeScreen.routingName:  (context)=>HomeScreen(),
      }
        //home:LoginScreen() ,
    );
  }

}