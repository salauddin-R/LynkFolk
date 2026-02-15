import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class WhenNoData extends StatelessWidget {
  const WhenNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 9,),
          Text("Last Entries",style: FontSize.semiBold(18.0,color: color.Black)),
          SizedBox(height: 9,),
          Container(
            height:230,
            width: double.infinity,
           decoration: BoxDecoration(
             color:color.DarkWhite,
             border: Border.all(color: color.Greay,width: 0.5),
             borderRadius: BorderRadius.circular(16),
           ),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Image.asset("assets/images/Library/Illustration.png"),
                SizedBox(height: 10,),
                Text("No resources found",style:FontSize.customeTextStyle(16, color.Black),),
                SizedBox(height:5,),
                Text("Try adjusting your search or filters",style:FontSize.customeTextStyle(14, color.Black.withValues(alpha: 0.6)),),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(15),
            height: 167,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color:Colors.blue.withValues(alpha: 0.45))
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child:Icon(Icons.auto_awesome,color:color.fellingColor,fontWeight: FontWeight.bold,size: 30,),
                    ),
                    SizedBox(width: 10,),
                    Text("Need More Helps?",style: FontSize.semiBold(20.0,color: color.Black),)
                  ],
                ),
                Text("These resources are general guidance. For specific concerns about your teen's wellbeing, consider consulting a mental health professional.",
                  textAlign:TextAlign.start,
                  style: FontSize.customeTextStyle(16, color.Black.withValues(alpha: 0.45)),)
              ],
            ),
          )
        ],
    );
  }
}
