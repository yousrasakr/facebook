import 'package:facebook/Home_screen/homeScreen.dart';
import 'package:facebook/login_screen/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ButtonReusaable extends StatelessWidget{
  String text;
  Color color;
  Color colorText;
  Color colorBorder;
  bool is_login;


  ButtonReusaable({required this.text,
    this.color=const Color(0x78D6DFF1),
    this.colorText=const Color(0xFF898F9C),
    this.colorBorder=const Color(0xFF898F9C),
    this.is_login=false,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: is_login
        ? () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routingName);
    }
        : null,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(353, 50),
          side: BorderSide(
            width: 1.0,
            color:colorBorder,
          ),
          backgroundColor: color,
        ),
        child: Text(text,
          style:TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color:colorText,
          ),
        )
    );


  }

}

