import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class textField extends StatefulWidget{
  String text;
  Color colorButton;
  Color colorText;
  Color colorBorder;
  bool is_Password;



 textField({required this.text,
   this.colorButton=const Color(0x78D6DFF1),
   this.colorText=const Color(0xFF898F9C),
   this.colorBorder=const Color(0xFF898F9C),
   this.is_Password=false,
 });

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  String? errorMessage;
  String? userInput;
  String ? userPassword;

 void checkTextValidation(String ?input)
 {
   // i searched for regexp
   final emailRegex=RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
   setState(() {
     if(input == null || input.isEmpty)
     {
       errorMessage="please enter an email";
     }
     else if (!emailRegex.hasMatch(input))
     {
       errorMessage="please enter a valid email";

     }
     else{
       errorMessage=null;
     }

   });

 }

  void checkPasswordValidation(String?password)
  {
    // i searched for regexp
    final passwordRegex=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    setState(() {
      if(password == null || password.isEmpty)
      {
        errorMessage="please enter your password";
      }
      else if (!passwordRegex.hasMatch(password))
      {
        errorMessage="please enter a valid password";

      }
      else{
        errorMessage=null;
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: TextField(
          keyboardType: widget.is_Password ? TextInputType.visiblePassword : TextInputType.emailAddress,
          obscureText: widget.is_Password,
          onChanged: widget.is_Password ? checkPasswordValidation : checkTextValidation,
          decoration: InputDecoration(
            errorText: errorMessage,
            filled: true,
            fillColor: widget.colorButton,
            hintText: widget.text,
            hintStyle: TextStyle(
                color: widget.colorText,
                fontWeight: FontWeight.bold
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      );

  }
}

/* ElevatedButton(onPressed: (){},
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
    );*/