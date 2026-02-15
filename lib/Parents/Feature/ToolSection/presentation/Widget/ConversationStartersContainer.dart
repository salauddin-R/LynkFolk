import 'package:flutter/material.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import 'copyTextWidget.dart';


class ConversationStarterContainer{
  static FirstContainer(String title,String subtitle){
    return Container(
      padding: EdgeInsets.all(10),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.purple.withValues(alpha:0.2),
        border: Border(
          left: BorderSide(color: Colors.purple,width:5),
          right:BorderSide(color: Colors.purple,width:1),
          top: BorderSide(color: Colors.purple,width:1),
          bottom:BorderSide(color: Colors.purple,width:1),
        ),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              radius: 19,
              backgroundColor:Colors.purple,
              child: Icon(Icons.sync,color:Colors.white,),
            ),
          ),
          SizedBox(width:8,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  textAlign: TextAlign.start,
                  style: FontSize.customeTextStyle(14.0,color.Black),),
                SizedBox(height: 5,),
                Text(subtitle,
                    textAlign: TextAlign.start,
                    style: FontSize.customeTextStyle(11.0,color.Black.withValues(alpha: 0.7)))
              ],
            ),
          )
        ],
      ),
    );
  }

  static Container conversContainer(String image,String title,VoidCallback ontap,){
    return Container(
      width:double.infinity,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey,width: 1),
          color:Colors.amber.withValues(alpha:0.1)
      ),
      child: ListTile(
        leading:CircleAvatar(
          radius: 20,
          backgroundImage:AssetImage(image),
        ),
        title: Text(title,style:FontSize.semiBold(20.0,color: color.Black)),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap:ontap,
      ),
    );
  }

  static Container ConnectionContainer(String title,{VoidCallback? ontap,IconData? icon,Color? colors}){
    return Container(
      width:double.infinity,
      //height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.DarkWhite,width: 1),
          color:colors!=null?colors:color.DarkWhite.withValues(alpha:0.9)
      ),
      child: ListTile(
        title: Text(title,style: FontSize.customeTextStyle(14.0,color.Black),),
        trailing: Icon(icon!=null?icon: Icons.copy),
        onTap:ontap!=null?ontap:() => copyToClipboard(title),
      ),
    );
  }

  static Container ReframeContainer({String? title,String? subtitle,Icon? icon,String? richText}){
    return Container(
        width:double.infinity,
        //padding: EdgeInsets.all(3),
        //height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey,width: 1),
            color:Colors.purple.withValues(alpha:0.09)
        ),
        child:ListTile(
          leading: icon,
          title:richText!=null?Text.rich(
            TextSpan(
                children: [
                  TextSpan(text:richText,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: color.fellingColor.withValues(alpha: 0.6))),
                  TextSpan(text:title,style: TextStyle(fontWeight: FontWeight.w400,color: color.Black,fontSize: 13)),
            ]),
              ):Text(title!,style:FontSize.customeTextStyle(16.0,color.Black)),
          subtitle: Text(subtitle!,style:FontSize.customeTextStyle(12.0,color.Black)),
        )
    );
  }

  static Row bottomsheetRow(String index,String details){
    return  Row(
      children: [
        CircleAvatar(
          radius: 13,
          backgroundColor: color.fellingColor.withValues(alpha: 0.45),
          child: Text(index,style: FontSize.customeTextStyle(14.0, color.Black),),
        ),
        SizedBox(width: 8,),
        Text(details,style: FontSize.customeTextStyle(14.0, color.Black),)
      ],
    );
  }

}