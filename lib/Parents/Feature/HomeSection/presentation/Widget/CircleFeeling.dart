import 'package:flutter/material.dart';
import 'package:untitled/Parents/core/utils/fontsizeClass.dart';

import '../../../../core/utils/colorClass.dart';

class Circlefeeling {
   static Circlefellingavater(String image,String feeling,VoidCallback onTap){
     return Column(
       children: [
         CircleAvatar(
           backgroundColor: color.DarkWhite,
           radius:25,
           child: TextButton(
             style: TextButton.styleFrom(
               padding: EdgeInsets.zero,
               shape: CircleBorder(),
             ),
             onPressed: onTap,
             child: Text(
               image,
               style: TextStyle(fontSize: 29),
             ),
           ),
         ),
         Text(feeling,style: FontSize.smallTextWhite(color.Black),)
       ],
     );
   }
}
