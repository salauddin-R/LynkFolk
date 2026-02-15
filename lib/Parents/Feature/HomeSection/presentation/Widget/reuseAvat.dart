import 'package:flutter/material.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class ReuseAvater{
  static CircleAvatar reUseAvatar(String data){
    return CircleAvatar(
      radius: 26,
      backgroundImage: NetworkImage(data),
    );
  }

  static Container reuseContainer(String image,String title,String subtitle,VoidCallback onTap){
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color.DarkWhite.withOpacity(0.45),
        borderRadius: BorderRadius.circular(16)
      ),
      child: ListTile(
        leading:Image.asset(image),
        title: Text(title,style: FontSize.semiBold(16)),
        subtitle: Text(subtitle,style: FontSize.smallText14_4(),),
        trailing: Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}