import 'package:flutter/material.dart';
import 'package:untitled/Parents/core/utils/fontsizeClass.dart';

import '../../../../core/utils/colorClass.dart';


class SupportToolContainer extends StatelessWidget {
  final IconData? icon;
  final String? image;
  final String title;
  final String subtitle;
  const SupportToolContainer({super.key,this.icon,this.image,required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:167,
      width:MediaQuery.of(context).size.width*0.42,
      padding: EdgeInsets.all(9),
      decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.32),
          borderRadius:BorderRadius.circular(16),
          border: Border.all(color: Colors.white,width: 1)
      ),
      child: Column(
        children: [
          Container(
            height:58,
            width:58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white
            ),
            child:image!=null?Image.asset("$image"):Icon(icon,color:color.fellingColor,fontWeight: FontWeight.bold,size: 35,),
          ),
          SizedBox(height: 10,),
          Text(title,style: FontSize.semiBold(14.0,color:color.BaguniColor),),
          SizedBox(height:4,),
          Text(subtitle,textAlign: TextAlign.center,style: FontSize.customeTextStyle(12.0,color.Black.withValues(alpha: 0.9)),),
        ],
      ),
    );
  }
}