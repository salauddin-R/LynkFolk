import 'package:flutter/material.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class SharedMassagedContainerListTile extends StatelessWidget {
  final String? imogi;
  final String? title;
  final String? subtitle;
  final String? time;
  final VoidCallback? onTap;
  const SharedMassagedContainerListTile({super.key,this.imogi,this.title,this.subtitle,this.time,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:color.DarkWhite.withValues(alpha: 0.45),
      ),
      child:ListTile(
        leading:Text(imogi!,style: TextStyle(fontSize: 23),),
        title:Text(title!,style: FontSize.semiBold(16),),
        subtitle:Row(
          children: [
            Text(subtitle!),SizedBox(width: 25,),Text(time!)
          ],
        ) ,
        trailing:Icon(Icons.arrow_forward_ios),
        onTap:onTap,
      ),
    );
  }
}
