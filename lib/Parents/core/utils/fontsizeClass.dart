import 'package:flutter/material.dart';

import 'colorClass.dart';

class FontSize{
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static TextStyle BigText(){
    return TextStyle(
      fontSize:30,
      fontWeight: FontWeight.bold,
      color:Colors.black
    );
  }

  static TextStyle smallText14_4(){
    return TextStyle(
        fontSize:13,
        fontWeight: FontWeight.w400,
        color:Colors.black
    );
  }

  static TextStyle semiBold(double size,{Color? color}){
    return TextStyle(
        fontSize:size,
        fontWeight: FontWeight.w600,
        color:color!=null?color:Colors.black
    );
  }

  static TextStyle smallText14_Bold(){
    return TextStyle(
        fontSize:14,
        fontWeight: FontWeight.bold,
        color:Colors.black
    );
  }

  static TextStyle customeTextStyle(double font,Color color){
    return TextStyle(
      fontSize: font,
      color:color,
      fontWeight: FontWeight.w400
    );
  }

  static TextStyle smallTextWhite(color_from){
    return TextStyle(
        fontSize:14,
        fontWeight: FontWeight.w500,
        color:color_from
    );
  }

  static TextStyle font11(){
    return TextStyle(
      fontSize: 11,
      color:color.DarkGray,
      fontWeight: FontWeight.w400
    );
  }
}
