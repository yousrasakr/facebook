import 'package:facebook/login_screen/buttons.dart';
import 'package:facebook/login_screen/text_filed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
 static String routName="login_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 74, left: 147, right: 146),
            child: Image.asset('assets/splash_screen/facebook_logo.png'),
          ),
          //first input:email
          Container(
            margin: EdgeInsets.only(top: 62, bottom: 24),
            child: textField(text: 'Mobile Number or Email Address'),
          ),
          //second input:password
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: textField(text: 'Password',is_Password: true,),
          ),
          //login
          Container(
            margin: EdgeInsets.only(bottom: 24),
            child: ButtonReusaable(
              text: 'Login',
              color: Color(0xFF1877F2),
              colorText: Colors.white,
              is_login: true,
            ),
          ),
          Text(
            'Forgotten Password ?',
            style: TextStyle(
              color: Color(0xFF898F9C),
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          //create account
          Container(
            margin: EdgeInsets.only(top: 224, bottom: 10),
            child: ButtonReusaable(
              text: 'Create Account',
              color: Colors.white,
              colorBorder: Color(0xFF1877F2),
              colorText: Color(0xFF1877F2),
            ),
          ),
          Expanded(child: Image.asset('assets/splash_screen/Meta_logo.png')),
        ],
      ),
    );
  }
}
