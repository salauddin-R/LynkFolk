import 'package:flutter/material.dart';

import 'colorClass.dart';
import 'fontsizeClass.dart';

class Styleclass {
  static ButtonStyle elevatedButtonStyle(BuildContext context,double wide,{double? height,Color? colors,double? radius}){
    return ElevatedButton.styleFrom(
        backgroundColor:colors!=null?colors: color.fellingColor,
        minimumSize: Size(wide,(height!=null)?height:45),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                radius != null? radius:8.0
            )
        )
    );
  }


  static ListTile profileListTile(String title,String? subtitle,Icon Leadingicon,VoidCallback onTap){
    return  ListTile(
      leading:CircleAvatar(
        radius:subtitle!=null?27: 23,
        backgroundColor: color.Greay.withOpacity(0.3),
        child: Icon(Leadingicon.icon,color: color.fellingColor,),
      ),
      title: Text(title,style: FontSize.smallTextWhite(color.Black),),
      subtitle:(subtitle != null && subtitle.isNotEmpty)?
      Text(subtitle,style: FontSize.font11(),):null,
      trailing:Icon(Icons.chevron_right),
      onTap:onTap,
    );
  }
}